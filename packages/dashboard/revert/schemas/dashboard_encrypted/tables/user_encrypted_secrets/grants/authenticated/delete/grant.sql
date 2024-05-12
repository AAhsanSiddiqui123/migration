-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_encrypted".user_encrypted_secrets FROM authenticated;
COMMIT;  

