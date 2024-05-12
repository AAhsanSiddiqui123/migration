-- Revert: schemas/dashboard_public/tables/goals/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".goals;
COMMIT;  

