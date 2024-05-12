-- Revert: schemas/dashboard_public/tables/connected_accounts/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".connected_accounts;
COMMIT;  

