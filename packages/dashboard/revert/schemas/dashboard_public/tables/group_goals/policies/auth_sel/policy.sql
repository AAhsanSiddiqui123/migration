-- Revert: schemas/dashboard_public/tables/group_goals/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".group_goals;
COMMIT;  

