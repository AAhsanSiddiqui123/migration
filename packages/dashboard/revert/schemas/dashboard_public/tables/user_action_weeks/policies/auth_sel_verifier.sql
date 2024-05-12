-- Revert schemas/dashboard_public/tables/user_action_weeks/policies/auth_sel_verifier from pg

BEGIN;



DROP POLICY auth_sel_verifier ON dashboard_public.user_action_weeks;

COMMIT;
