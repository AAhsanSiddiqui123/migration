-- Revert: schemas/dashboard_public/tables/goals/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".goals;
COMMIT;  

