// Input address of deployed BanditCamp here.
const BANDIT_CAMP_ADDRESS = "0x99fE0A94716B4d2CC515fA15ab5DeA9011fC4979";

async function main() {
  const camp = await ethers.getContractAt(
    "BanditCamp", BANDIT_CAMP_ADDRESS);

  await camp.clearCamp();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});