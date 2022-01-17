import { solidity } from "ethereum-waffle";
import { expect, use } from "chai";
import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { deploy } from "../scripts/deployer";
import { Contract } from "ethers";
import { getTokensAmount, getZeroAddress } from "./utils/utils";
import { BigNumber } from "ethers";
import { ethers } from "hardhat";
import Debug from "debug";

const debug = Debug("ABAG:test");

use(solidity);

describe("VNS Basic Tests", async () => {
    debug("Test Basic functions");
  let contract: Contract;
  let user: SignerWithAddress;
  let owner: SignerWithAddress;
  let deployment: any;

  const tokens = getTokensAmount(); // returns 10**18 ~ 1eth
  const secInDay = BigNumber.from(86400); // 1 day in seconds

  async function advanceTime(delay: number) {
    await ethers.provider.send("evm_increaseTime", [delay]);
  }

  before(async () => {
    deployment = await deploy("local");
    contract = deployment!.vanityNameService_contract;
    owner = deployment.signers[0];
    user = deployment.signers[1];
  });

  describe("Test States & Updates ", () => {
    it("Check State Vars : Post Deployment", async () => {
      expect(await contract!.reservationFee()).to.equal(tokens.div(100));
      expect(await contract!.perCharRegistrationFee()).to.equal(
        tokens.div(100).mul(2)
      );
      expect(await contract!.reservationDuration()).to.equal(secInDay);
      expect(await contract!.registryDuration()).to.equal(secInDay.mul(28));
    });

    it("Check State Vars : Update", async () => {
      // Updating State vars by non-owner
      await expect(
        contract!.connect(user!).updateFee(0, tokens)
      ).to.be.revertedWith("Ownable: caller is not the owner");
      await expect(
        contract!.connect(user!).updateDuration(0, secInDay)
      ).to.be.revertedWith("Ownable: caller is not the owner");

      // updating State Vars by owner for correct operation type
      await contract!.connect(owner!).updateFee(0, tokens.div(100).mul(2));
      await contract!.connect(owner!).updateFee(1, tokens.div(100).mul(3));
      await contract!.connect(owner!).updateDuration(0, secInDay.mul(2));
      await contract!.connect(owner!).updateDuration(1, secInDay.mul(20));

      // validate state
      expect(await contract!.reservationFee()).to.equal(tokens.div(100).mul(2));
      expect(await contract!.perCharRegistrationFee()).to.equal(
        tokens.div(100).mul(3)
      );
      expect(await contract!.reservationDuration()).to.equal(secInDay.mul(2));
      expect(await contract!.registryDuration()).to.equal(secInDay.mul(20));
    });

    it("Reserve Name : New Reservation", async () => {
    // generate reservation hash
      const reservationHash = await contract!.buildReservationHash("myname");

      // reserving without reservation fee
      await expect(contract!.reserveName(reservationHash)).to.be.revertedWith(
        "ERR : INSUFFICIENT FEE"
      );

      // reserving with reservation fee
      await contract!.reserveName(reservationHash, {
        value: tokens.div(100).mul(2),
      });

      // validate
      const reservationInfo = await contract!.getNameReservation(
        reservationHash
      );

      expect(reservationInfo.reservedBy).to.equal(owner!.address);
      expect(reservationInfo.feePaid).to.equal(tokens.div(100).mul(2));
    });

    it("Reserve Name : Reserving Already Reserved Name(NON-EXPIRED)", async () => {
        // generate reservation hash
      const reservationHash = await contract!.buildReservationHash("myname");

      // Reserving already reserved name
      await expect(
        contract!.connect(user!).reserveName(reservationHash)
      ).to.be.revertedWith("ERR: ALREADY RESERVED");
    });

    it("Reserve Name : Reserving Already Reserved Name(EXPIRED)", async () => {
      // forwarding evm time to test post expiry
      await advanceTime(86400 * 3);

      // generate reservation hash
      const reservationHash = await contract!.buildReservationHash("myname");

      // reserve name
      await contract!.connect(user!).reserveName(reservationHash, {
        value: tokens.div(100).mul(2),
      });

      // validate
      const reservationInfo = await contract!.getNameReservation(
        reservationHash
      );

      expect(reservationInfo.reservedBy).to.equal(user!.address);
      expect(reservationInfo.feePaid).to.equal(tokens.div(100).mul(2));
    });

    it("Reserve Name : Cancel Reservation", async () => {
        // generate reservation hash
      const reservationHash = await contract!.buildReservationHash("myname");

      // Trying to cancel reservation by non-reserver
      await expect(
        contract!.connect(owner!).cancelReservation(reservationHash)
      ).to.be.revertedWith("ERR: AUTH FAILED");

      // Trying to cancel reservation by reserver
      await contract!.connect(user!).cancelReservation(reservationHash);

      const reservationInfo = await contract!.getNameReservation(
        reservationHash
      );

      // Validate state
      expect(reservationInfo.reservedBy).to.equal(getZeroAddress());
      expect(reservationInfo.feePaid).to.equal(0);
    });

    it("Reserve Name : Event Emission", async () => {
        // generate reservation hash
      const reservationHash = await contract!.buildReservationHash("mynewname");

      // generate estimated expiry time
      const blockBefore = await ethers.provider.getBlock(
        await ethers.provider.getBlockNumber()
      );
      const expectedTime = blockBefore.timestamp + 86400 * 2 + 1;

      //  validate event emission
      await expect(
        contract.reserveName(reservationHash, {
          value: tokens.div(100).mul(2),
        })
      )
        .to.emit(contract!, "LogNameReservation")
        .withArgs(
          owner!.address,
          reservationHash,
          tokens.div(100).mul(2),
          expectedTime
        );
    });

    it("Register Name : New Registration", async () => {
      const vnsName = "mynewname";

      // register with non-owner
      await expect(
        contract!.connect(user!.address).registerName(vnsName)
      ).to.be.revertedWith("ERR: NOT RESERVED OR EXPIRED");

      // register without fee
      await expect(
        contract!.registerName(vnsName)
      ).to.be.revertedWith("ERR : INSUFFICIENT FEE");

      // register with fee & owner
      await contract!.connect(owner!).registerName(vnsName, {
        value: tokens,
      });

      // validate
      const registryInfo = await contract!.getNameRegistry(
        await contract!.getNameHash(vnsName)
      );

      expect(registryInfo.registeredTo).to.equal(owner!.address);
      // expect(reservationInfo.feePaid).to.equal(tokens.div(100).mul(2));
    });

    it("Register Name : Registering Already Registered Name(NON-EXPIRED)", async () => {
      const vnsName = "mynewname";

      // reserving already registered name
      const reservationHash = await contract!
        .connect(user!)
        .buildReservationHash(vnsName);

      await contract.connect(user!).reserveName(reservationHash, {
        value: tokens.div(100).mul(2),
      });

      // trying to register already registered name
      await expect(
        contract!.connect(user!).registerName(vnsName, {
          value: tokens,
        })
      ).to.be.revertedWith("ERR : NAME ALREADY REGISTERED");
    });

    it("Register Name : Registering Already Registered Name(EXPIRED)", async () => {
      const vnsName = "mynewname";
      const nameHash = await contract!.getNameHash(vnsName);

      // reserving already registered name
      const reservationHash = await contract!
        .connect(user!)
        .buildReservationHash(vnsName);

        // advancing evm time
      await advanceTime(86400 * 30);

      // serve name
      await contract.connect(user!).reserveName(reservationHash, {
        value: tokens.div(100).mul(2),
      });

      // register name
      await contract!.connect(user!).registerName(vnsName, {
        value: tokens,
      });

      // validate
      let registryInfo = await contract!.getNameRegistry(nameHash);

      expect(registryInfo.registeredTo).to.equal(user!.address);
      // expect(reservationInfo.feePaid).to.equal(tokens.div(100).mul(2));
    });

    it("Register Name : Renew Registration", async () => {
      const vnsName = "mynewname";
    
      // advance evm time
      await advanceTime(86400 * 3);

      // renew registration
      await contract.connect(user!).renewName(vnsName);

      // validate
    });

    it("Register Name : Withdraw deposit on expiry", async () => {
      const vnsName = "mynewname";
        // advance evm time
      await advanceTime(86400 * 30);

      // withdraw amount after deposit
      await contract.connect(user!).withdrawRegistryDeposit(vnsName);
    });

    it("Register Name : Event Emission", async () => {
      const vnsName = "mynewname1";

      // generate reservation hash
      const reservationHash = await contract!
        .connect(user!)
        .buildReservationHash(vnsName);

    // reserve name
      await contract.connect(user!).reserveName(reservationHash, {
        value: tokens.div(100).mul(2),
      });


      // estimate expiry
      const blockBefore = await ethers.provider.getBlock(
        await ethers.provider.getBlockNumber()
      );
      const expectedTime = blockBefore.timestamp + 86400 * 20 + 1;


      // validate register with event emission
      await expect(
        contract!.connect(user!).registerName(vnsName, {
            value: tokens,
        })
      )
        .to.emit(contract!, "LogNameRegistered")
        .withArgs(
          user!.address,
          vnsName,
          "300000000000000000",
          expectedTime
        );
    });
  });
});

// TODO : 1. OPTIMIZE TEST CASES
