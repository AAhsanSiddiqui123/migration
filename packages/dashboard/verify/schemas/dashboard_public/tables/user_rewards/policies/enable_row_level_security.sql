-- Verify schemas/dashboard_public/tables/user_rewards/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.user_rewards');

ROLLBACK;
