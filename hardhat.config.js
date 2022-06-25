require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-etherscan");

module.exports = {
  solidity: "0.8.4",
  networks: {
    goerli: {
      url: "RPC_URL",
      accounts: ["PRIVATE_KEY"],
    },
  },
  etherscan: {
    apiKey: {
      goerli: "ETHERSCAN_KEY",
    },
  },
};
