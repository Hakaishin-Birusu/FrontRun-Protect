import { deploy } from './deployer';

async function main() {
    await deploy('kovan');
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
