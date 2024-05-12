// executeTask.js

// Import your function
const { deploy } = require('./deploy');

async function executeDeploy() {
    const args = process.argv.slice(2);

    if (args.length < 2) {
        console.error('Usage: node executeTask.js <param1> <param2>');
        process.exit(1); // Exit with an error code
    }
    const name = args[0];
    const database = args[1]


    await deploy(name, database).then((res) => {
        // console.log('res');
        // console.log(res);
    }).catch((err) => {
        console.log(err, 'err');
    });



    // console.log(database, name);

    process.exit(0);

}


executeDeploy()
    .then(() => {
        process.exit(0);
    })
    .catch((err) => {
        console.error('Error in executeDeploy:', err);
        process.exit(1);
    });