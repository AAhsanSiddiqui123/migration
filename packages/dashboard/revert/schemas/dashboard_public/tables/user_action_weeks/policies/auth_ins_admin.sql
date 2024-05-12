-- Revert schemas/dashboard_public/tables/user_action_weeks/policies/auth_ins_admin from pg

BEGIN;



DROP POLICY auth_ins_admin ON dashboard_public.user_action_weeks;

COMMIT;
