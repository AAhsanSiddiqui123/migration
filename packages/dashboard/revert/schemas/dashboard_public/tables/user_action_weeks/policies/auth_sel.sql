-- Revert schemas/dashboard_public/tables/user_action_weeks/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.user_action_weeks;

COMMIT;
