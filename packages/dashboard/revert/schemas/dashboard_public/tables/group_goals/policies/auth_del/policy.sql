-- Revert: schemas/dashboard_public/tables/group_goals/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".group_goals;
COMMIT;  

