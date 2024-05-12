-- Verify schemas/dashboard_public/tables/user_rewards/alterations/add_foreign_key_user_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_rewards', 'fk_dashboard_public_user_rewards_user_id');

ROLLBACK;
