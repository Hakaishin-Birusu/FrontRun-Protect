import '@nomiclabs/hardhat-ethers';
import '@typechain/hardhat';

module.exports = {
  defaultNetwork: "local",
  networks: {
    hardhat: {
    },
    local: {
      url: 'http://127.0.0.1:8545/',
      chainId: 31337,
  },
  kovan: {
    url: 'http://127.0.0.1:8545/',  // update rpc , chainID to run on kovan
    chainId: 31337,                 // add private key of signing account
},
    
  },
  solidity: {
    version: "0.8.4",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  },
  mocha: {
    timeout: 20000
  }
}