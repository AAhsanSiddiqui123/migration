-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_encrypted".user_encrypted_secrets;
COMMIT;  

