-- Revert schemas/dashboard_public/tables/data_tag_language_variations/grants/grant_select_insert_update_delete_to_authenticated from pg

BEGIN;

REVOKE SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.data_tag_language_variations FROM authenticated;

COMMIT;
