-- Revert: schemas/dashboard_public/tables/impacts_conditions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".impacts_conditions;
COMMIT;  

