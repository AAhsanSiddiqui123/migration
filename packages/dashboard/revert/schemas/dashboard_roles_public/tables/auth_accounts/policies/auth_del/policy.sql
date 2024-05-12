-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_roles_public".auth_accounts;
COMMIT;  

