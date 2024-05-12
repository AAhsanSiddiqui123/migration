-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table from pg

BEGIN;
DROP TABLE "dashboard_encrypted".user_encrypted_secrets;
COMMIT;  

