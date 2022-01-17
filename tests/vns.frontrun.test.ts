import { solidity } from "ethereum-waffle";
import { expect, use } from "chai";
import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { deploy } from "../scripts/deployer";
import { Contract } from "ethers";
import { getTokensAmount } from "./utils/utils";
import Debug from "debug";

const debug = Debug("ABAG:test");

use(solidity);

describe("VNS Front run Test", async () => {
  debug("Test Front-Run");
  let contract: Contract;
  let maliciousMiner: SignerWithAddress;
  let owner: SignerWithAddress;
  let deployment: any;

  const tokens = getTokensAmount(); // returns 10**18 ~ 1eth

  before(async () => {
    deployment = await deploy("local");
    contract = deployment!.vanityNameService_contract;
    owner = deployment.signers[0];
    maliciousMiner = deployment.signers[1];
  });

  describe("Miner Extracts Tx info from mem-pool & Front-Run", () => {
    it("Attack Test", async () => {
      const vnsName = "myvnsname";

      /**
       * 1. Owner builds reservationHash.
       * 2. Reservation hash is build using vnsName & owners's address
       * 3. Owner Sends the transaction for reservation.
       */

      // user generates the reservationHash
      const reservationHash = await contract!.buildReservationHash(vnsName);

      /**
       * Assuming,
       * 1. Owner's transaction is not mined, and still resides in mem-pool.
       * 2. Malicious miner is able to get hold of transaction data i.e, reservation hash.
       * 3. Malicious miner sends transaction with same payload with higher gas.
       * 4. Malicious miner successfully reserves the reservationHash and pays reservation fee.
       * 5. Since malicious miner has already reserved the reservationHash , user transaction will later fail.
       */

      // reservationHash is reserved by miner tx
      await contract!.connect(maliciousMiner).reserveName(reservationHash, {
        value: tokens.div(100).mul(2),
      });

      /**
       * Assuming,
       * 1. Owner is not aware of front-run in reservation & sends transaction to registerName, revealing original name in string.
       * 2. Owners's tx to registerName is not mined & residing in mem-pool.
       * 3. Again, malicious miner is able to get hold of transaction data i.e, Name string.
       * 4. Malicious miner sends transaction with revealed name & own address with higher gas.
       * 5. NOTE : Since reservationHash in registerName is re-generated & for this original name & msg.sender(address) is used
       * So, miner will never be able to generate same reservationHash ever. Due to which front-run tx below fails for malicious miner.
       */

      // registerName tx by malicious miner fails
      await expect(
        contract!
          .connect(maliciousMiner!)
          .registerName(vnsName)
      ).to.be.revertedWith("ERR: NOT RESERVED OR EXPIRED");

      /**
       * 1. Owner transaction is mined, and original owner can register name for itself.
       * 2. Since reservation fee was paid by malicious miner, that fee is adjusted in registration fee,
       * thus owner benefits from front-run attack by miner.
       */

      // owner successfully register name.
      await contract!
        .connect(owner!)
        .registerName(vnsName, { value: tokens });

      // Validate registry
      const registryInfo = await contract!.getNameRegistry(
        await contract!.getNameHash(vnsName)
      );

      expect(registryInfo.registeredTo).to.equal(owner!.address);
    });
  });
});
