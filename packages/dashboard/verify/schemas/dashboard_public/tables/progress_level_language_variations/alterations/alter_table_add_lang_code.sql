-- Verify schemas/dashboard_public/tables/progress_level_language_variations/alterations/alter_table_add_lang_code  on pg

BEGIN;

SELECT lang_code FROM dashboard_public.progress_level_language_variations LIMIT 1;

ROLLBACK;
