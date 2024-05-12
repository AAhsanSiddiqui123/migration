-- Revert schemas/dashboard_invites_public/tables/claimed_invites/alterations/add_foreign_key_invite_id from pg

BEGIN;

ALTER TABLE dashboard_invites_public.claimed_invites
    DROP CONSTRAINT fk_dashboard_invites_public_claimed_invites_invite_id;

COMMIT;
