-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_encrypted".user_encrypted_secrets DROP COLUMN id;
COMMIT;  

