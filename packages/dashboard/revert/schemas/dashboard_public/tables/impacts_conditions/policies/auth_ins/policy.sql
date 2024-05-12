-- Revert: schemas/dashboard_public/tables/impacts_conditions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".impacts_conditions;
COMMIT;  

