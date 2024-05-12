-- Revert: schemas/dashboard_public/tables/user_actions/policies/auth_upd_own/policy from pg

BEGIN;
DROP POLICY auth_upd_own ON "dashboard_public".user_actions;
COMMIT;  

