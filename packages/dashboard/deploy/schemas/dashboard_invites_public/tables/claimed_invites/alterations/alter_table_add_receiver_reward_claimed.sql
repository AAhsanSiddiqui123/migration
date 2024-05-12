-- Deploy schemas/dashboard_invites_public/tables/claimed_invites/alterations/alter_table_add_receiver_reward_claimed to pg

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table

BEGIN;

ALTER TABLE dashboard_invites_public.claimed_invites
    ADD COLUMN receiver_reward_claimed boolean DEFAULT false;

COMMIT;
