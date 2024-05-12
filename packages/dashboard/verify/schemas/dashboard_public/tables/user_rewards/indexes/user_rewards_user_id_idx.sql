-- Verify schemas/dashboard_public/tables/user_rewards/indexes/user_rewards_user_id_idx  on pg

BEGIN;

SELECT verify_index ('dashboard_public.user_rewards', 'user_rewards_user_id_idx');

ROLLBACK;
