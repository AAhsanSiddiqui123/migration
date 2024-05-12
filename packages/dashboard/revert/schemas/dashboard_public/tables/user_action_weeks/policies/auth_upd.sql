-- Revert schemas/dashboard_public/tables/user_action_weeks/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.user_action_weeks;

COMMIT;
