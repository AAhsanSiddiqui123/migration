-- Verify: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table on pg

BEGIN;
SELECT verify_table('dashboard_encrypted.user_encrypted_secrets');
COMMIT;  

