-- Revert: schemas/dashboard_public/tables/goals/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".goals;
COMMIT;  

