-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_roles_public".auth_accounts;
COMMIT;  

