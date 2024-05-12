-- Revert schemas/dashboard_public/tables/progress_levels/grants/grant_select_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.progress_levels FROM authenticated;

COMMIT;
