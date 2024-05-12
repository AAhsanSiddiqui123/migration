-- Revert schemas/dashboard_public/tables/user_action_weeks/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.user_action_weeks;

COMMIT;
