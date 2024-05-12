-- Verify schemas/dashboard_public/tables/data_tag_language_variations/alterations/alter_table_add_data_tag_id  on pg

BEGIN;

SELECT data_tag_id FROM dashboard_public.data_tag_language_variations LIMIT 1;

ROLLBACK;
