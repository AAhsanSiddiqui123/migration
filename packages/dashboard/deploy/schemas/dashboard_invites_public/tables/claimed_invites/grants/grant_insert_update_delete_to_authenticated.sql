-- Deploy schemas/dashboard_invites_public/tables/claimed_invites/grants/grant_insert_update_delete_to_authenticated to pg

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table

BEGIN;

-- TODO make sure to require any policies on this table!

GRANT INSERT, UPDATE, DELETE ON TABLE dashboard_invites_public.claimed_invites TO authenticated;

COMMIT;
