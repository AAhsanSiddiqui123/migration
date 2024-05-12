-- Revert: schemas/dashboard_public/tables/related_actions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".related_actions;
COMMIT;  

