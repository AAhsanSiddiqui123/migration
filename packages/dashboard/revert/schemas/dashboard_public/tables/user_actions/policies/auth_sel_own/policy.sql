-- Revert: schemas/dashboard_public/tables/user_actions/policies/auth_sel_own/policy from pg

BEGIN;
DROP POLICY auth_sel_own ON "dashboard_public".user_actions;
COMMIT;  

