-- Revert: schemas/dashboard_public/tables/actions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".actions;
COMMIT;  

