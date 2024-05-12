-- Verify schemas/dashboard_public/tables/language_dictionary/alterations/alter_table_add_image  on pg

BEGIN;

SELECT image FROM dashboard_public.language_dictionary LIMIT 1;

ROLLBACK;
