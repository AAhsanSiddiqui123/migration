-- Revert: schemas/dashboard_public/tables/user_viewed_actions/policies/auth_sel_owner/policy from pg

BEGIN;
DROP POLICY auth_sel_owner ON "dashboard_public".user_viewed_actions;
COMMIT;  

