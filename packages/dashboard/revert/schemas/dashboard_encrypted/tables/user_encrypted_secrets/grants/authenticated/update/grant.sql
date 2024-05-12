-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_encrypted".user_encrypted_secrets FROM authenticated;
COMMIT;  

