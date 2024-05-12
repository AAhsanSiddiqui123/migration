-- Revert: schemas/dashboard_public/tables/connected_accounts/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".connected_accounts;
COMMIT;  

