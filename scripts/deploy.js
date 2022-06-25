const { ethers } = require("hardhat");

require("@nomiclabs/hardhat-etherscan");

async function main() {
  const verifyContract = await ethers.getContractFactory("DeadmanSwitch");

  const deployedVerifyContract = await verifyContract.deploy();

  await deployedVerifyContract.deployed();

  console.log("Verify Contract Address:", deployedVerifyContract.address);

  console.log("Sleeping.....");

  await sleep(50000);

  await hre.run("verify:verify", {
    address: deployedVerifyContract.address,
    constructorArguments: [],
    contract: "contracts/DeadmanSwitch.sol:DeadmanSwitch",
  });
}

function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

// Call the main function and catch if there is any error
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
