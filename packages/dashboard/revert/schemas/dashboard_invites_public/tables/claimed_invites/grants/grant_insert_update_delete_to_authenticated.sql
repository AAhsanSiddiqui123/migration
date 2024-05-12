-- Revert schemas/dashboard_invites_public/tables/claimed_invites/grants/grant_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE INSERT, UPDATE, DELETE ON TABLE dashboard_invites_public.claimed_invites FROM authenticated;

COMMIT;
