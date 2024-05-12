-- Revert: schemas/dashboard_public/tables/impacts_conditions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".impacts_conditions;
COMMIT;  

