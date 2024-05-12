-- Verify schemas/dashboard_public/tables/data_tag_language_variations/alterations/alter_table_add_lang_code  on pg

BEGIN;

SELECT lang_code FROM dashboard_public.data_tag_language_variations LIMIT 1;

ROLLBACK;
