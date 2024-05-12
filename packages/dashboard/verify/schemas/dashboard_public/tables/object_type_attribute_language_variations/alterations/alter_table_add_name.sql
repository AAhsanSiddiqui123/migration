-- Verify schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/alter_table_add_name  on pg

BEGIN;

SELECT name FROM dashboard_public.object_type_attribute_language_variations LIMIT 1;

ROLLBACK;
