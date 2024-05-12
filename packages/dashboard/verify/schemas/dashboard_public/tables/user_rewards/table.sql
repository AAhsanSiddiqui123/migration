-- Verify schemas/dashboard_public/tables/user_rewards/table on pg

BEGIN;

SELECT verify_table ('dashboard_public.user_rewards');

ROLLBACK;
