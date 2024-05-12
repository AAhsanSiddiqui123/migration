-- Revert schemas/dashboard_public/tables/user_dismissed_track_actions/grants/grant_select_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.user_dismissed_track_actions FROM authenticated;

COMMIT;
