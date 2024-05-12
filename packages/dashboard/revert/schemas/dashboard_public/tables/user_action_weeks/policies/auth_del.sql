-- Revert schemas/dashboard_public/tables/user_action_weeks/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_public.user_action_weeks;

COMMIT;
