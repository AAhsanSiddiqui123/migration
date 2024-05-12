-- Verify schemas/dashboard_public/tables/user_action_verifications/policies/auth_sel_user  on pg

BEGIN;

SELECT verify_policy ('auth_sel_user', 'dashboard_public.user_action_verifications');


ROLLBACK;
