import { ethers } from "hardhat";
import Debug from "debug";
import fs from "fs/promises";

const debug = Debug("ABAG:deployment");

async function deploy(network: string) {
  const signers = await ethers.getSigners();

  const reservationCost = "10000000000000000"; // 0.01 eth
  const perCharRegistryCost = "20000000000000000"; // 0.02 eth

  const VanityNameService = await ethers.getContractFactory(
    "VanityNameService"
  );
  const vanityNameService = await VanityNameService.deploy(
    perCharRegistryCost,
    reservationCost
  );
  const vanityNameService_contract = await vanityNameService.deployed();
  debug("ABAG:Deployed At : ", vanityNameService_contract.address);

  // Save Output
  const app_output = {
    VNS: {
      Network: network,
      ContractAddress: vanityNameService_contract.address,
      DeployedBy: signers[0].address,
      reservationCost: reservationCost,
      PerCharRegistryCost: perCharRegistryCost,
    },
  };

  let deploymentString = JSON.stringify(app_output, null, 4);
  await fs.writeFile(`deployments/vns.${network}.json`, deploymentString);
  return { vanityNameService_contract, signers };
}

export { deploy };
