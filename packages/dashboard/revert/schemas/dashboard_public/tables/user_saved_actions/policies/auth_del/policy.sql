-- Revert: schemas/dashboard_public/tables/user_saved_actions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".user_saved_actions;
COMMIT;  

