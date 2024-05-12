-- Deploy schemas/dashboard_invites_public/tables/claimed_invites/alterations/add_foreign_key_invite_id to pg

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;


ALTER TABLE dashboard_invites_public.claimed_invites
    ADD CONSTRAINT fk_dashboard_invites_public_claimed_invites_invite_id
    FOREIGN KEY (invite_id)
    REFERENCES dashboard_invites_public.invites (id)
    ON DELETE CASCADE;


COMMIT;
