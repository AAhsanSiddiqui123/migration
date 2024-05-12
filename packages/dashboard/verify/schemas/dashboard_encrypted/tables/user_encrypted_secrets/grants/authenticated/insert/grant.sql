-- Verify: schemas/dashboard_encrypted/tables/user_encrypted_secrets/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_encrypted.user_encrypted_secrets', 'insert', 'authenticated');
COMMIT;  

