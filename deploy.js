//import * as shell from 'shelljs';
const shell = require('shelljs');
const { resolve } = require('path');
const { listModules } = require('./modules');
const { skitchPath } = require('./paths');
const { extDeps } = require('./deps');
const { getDatabaseConfig } = require('./envConfig');
const dotenv = require('dotenv');
dotenv.config();


const pg = require('pg');

function excu(name, database) {
  console.log(name, database);
};


const deploy = async (name, database, opts) => {
  const { PGUSER, PGPASSWORD, PGHOST, PGPORT } = await getDatabaseConfig();
  const modules = await listModules();
  const path = await skitchPath();
  if (!modules[name]) {
    throw new Error(`module ${name} does not exist!`);
  }
  const extensions = await extDeps(name);

  const pgPool = new pg.Pool({
    connectionString: `postgres://${PGUSER}:${PGPASSWORD}@${PGHOST}:${PGPORT}/${database}`
  });


  for (let i = 0; i < extensions.resolved.length; i++) {
    const extension = extensions.resolved[i];

    try {
      if (extensions.external.includes(extension)) {
        console.log(`CREATE EXTENSION IF NOT EXISTS "${extension}" CASCADE;`);
        await pgPool.query(
          `CREATE EXTENSION IF NOT EXISTS "${extension}" CASCADE;`
        );
      } else {
        console.log(modules[extension].path);
        console.log(`sqitch deploy db:pg:${database}`);
        const cmd = shell.exec(`sqitch deploy db:pg:${database}`, {
          cwd: resolve(path, modules[extension].path),
          env: {
            PGUSER,
            PGPASSWORD,
            PGHOST,
            PGPORT
          }
        });
        if (cmd.code !== 0) {
          throw new Error('deploy failed');
        }
      }
    } catch (e) {
      console.log(e, 'err');
      pgPool.end();
      process.exit(1);
    }
  }
  pgPool.end();

  return extensions;
};

module.exports = { deploy, excu }