-- Revert: schemas/dashboard_public/tables/action_impacts/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".action_impacts;
COMMIT;  

