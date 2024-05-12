-- Verify schemas/dashboard_invites_public/tables/claimed_invites/alterations/alter_table_add_receiver_reward_claimed  on pg

BEGIN;

SELECT receiver_reward_claimed FROM dashboard_invites_public.claimed_invites LIMIT 1;

ROLLBACK;
