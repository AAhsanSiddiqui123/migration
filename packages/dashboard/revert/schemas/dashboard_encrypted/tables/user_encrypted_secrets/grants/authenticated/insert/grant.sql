-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_encrypted".user_encrypted_secrets FROM authenticated;
COMMIT;  

