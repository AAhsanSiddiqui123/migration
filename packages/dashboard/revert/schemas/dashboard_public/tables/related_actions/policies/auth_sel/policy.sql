-- Revert: schemas/dashboard_public/tables/related_actions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".related_actions;
COMMIT;  

