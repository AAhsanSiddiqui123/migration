-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_roles_public".auth_accounts;
COMMIT;  

