-- Revert schemas/dashboard_invites_public/tables/claimed_invites/alterations/alter_table_add_sender_reward_claimed from pg

BEGIN;

ALTER TABLE dashboard_invites_public.claimed_invites
    DROP COLUMN sender_reward_claimed;

COMMIT;
