-- Revert: schemas/dashboard_public/tables/goal_explanations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".goal_explanations;
COMMIT;  

