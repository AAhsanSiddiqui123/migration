-- Revert schemas/dashboard_invites_public/tables/claimed_invites/alterations/alter_table_add_invite_id from pg

BEGIN;

ALTER TABLE dashboard_invites_public.claimed_invites
    DROP COLUMN invite_id;

COMMIT;
