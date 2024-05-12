-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_encrypted".user_encrypted_secrets;
COMMIT;  

