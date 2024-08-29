const { SecretsManagerClient, GetSecretValueCommand } = require('@aws-sdk/client-secrets-manager');
const getDatabaseConfig = async () => {
    if (false) {
        const client = new SecretsManagerClient({
            region: process.env.AWS_REGION,
        });

        return await client.send(
            new GetSecretValueCommand({
                SecretId: process.env.AWS_SECRET_NAME,
                VersionStage: 'AWSCURRENT',
            })
        ).then((response) => {
            if (response.SecretString) {
                const {
                    DATABASE_HOST,
                    DATABASE_USER,
                    DATABASE_PASSWORD,
                    DATABASE_PORT,
                } = JSON.parse(response.SecretString);
                return {
                    PGHOST: DATABASE_HOST,
                    PGUSER: DATABASE_USER,
                    PGPASSWORD: DATABASE_PASSWORD,
                    PGPORT: DATABASE_PORT,
                };
            }
        }).catch((error) => {
            console.error(`Error: ${error}`);
            throw error;
        });
    } else {
        return {
            PGUSER: 'postgres',
            PGPASSWORD: 'postgres',
            PGHOST: 'postgress-db.crvkg9mnjeve.ca-central-1.rds.amazonaws.com',
            PGPORT: 5432,
        };
    }
};

module.exports = { getDatabaseConfig }
