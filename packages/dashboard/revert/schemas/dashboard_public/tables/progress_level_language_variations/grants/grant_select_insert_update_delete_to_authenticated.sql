-- Revert schemas/dashboard_public/tables/progress_level_language_variations/grants/grant_select_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.progress_level_language_variations FROM authenticated;

COMMIT;
