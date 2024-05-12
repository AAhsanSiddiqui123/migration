-- Deploy schemas/dashboard_invites_public/tables/claimed_invites/alterations/alter_table_add_invite_id to pg

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table

BEGIN;

ALTER TABLE dashboard_invites_public.claimed_invites
    ADD COLUMN invite_id uuid NULL;

COMMIT;
