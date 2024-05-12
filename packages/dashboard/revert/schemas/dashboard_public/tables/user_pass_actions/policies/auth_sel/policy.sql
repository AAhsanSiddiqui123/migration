-- Revert: schemas/dashboard_public/tables/user_pass_actions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".user_pass_actions;
COMMIT;  

