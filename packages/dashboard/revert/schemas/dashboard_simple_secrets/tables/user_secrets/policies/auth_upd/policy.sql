-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_simple_secrets".user_secrets;
COMMIT;  

