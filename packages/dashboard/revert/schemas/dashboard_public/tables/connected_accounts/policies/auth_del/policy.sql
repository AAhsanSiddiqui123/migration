-- Revert: schemas/dashboard_public/tables/connected_accounts/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".connected_accounts;
COMMIT;  

