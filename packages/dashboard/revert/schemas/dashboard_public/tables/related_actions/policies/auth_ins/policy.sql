-- Revert: schemas/dashboard_public/tables/related_actions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".related_actions;
COMMIT;  

