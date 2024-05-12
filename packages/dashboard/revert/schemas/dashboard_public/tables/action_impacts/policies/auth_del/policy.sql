-- Revert: schemas/dashboard_public/tables/action_impacts/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".action_impacts;
COMMIT;  

