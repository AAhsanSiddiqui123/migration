-- Revert: schemas/dashboard_public/tables/action_impacts/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".action_impacts;
COMMIT;  

