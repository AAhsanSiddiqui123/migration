-- Verify schemas/dashboard_public/tables/user_action_weeks/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_public.user_action_weeks');


ROLLBACK;
