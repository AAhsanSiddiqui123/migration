-- Verify schemas/dashboard_public/tables/data_tag_language_variations/table on pg

BEGIN;

SELECT verify_table ('dashboard_public.data_tag_language_variations');

ROLLBACK;
