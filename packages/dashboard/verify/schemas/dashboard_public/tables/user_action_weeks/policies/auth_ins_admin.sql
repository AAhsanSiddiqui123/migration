-- Verify schemas/dashboard_public/tables/user_action_weeks/policies/auth_ins_admin  on pg

BEGIN;

SELECT verify_policy ('auth_ins_admin', 'dashboard_public.user_action_weeks');


ROLLBACK;
