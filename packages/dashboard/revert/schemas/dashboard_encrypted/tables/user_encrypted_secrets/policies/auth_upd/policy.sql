-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_encrypted".user_encrypted_secrets;
COMMIT;  

