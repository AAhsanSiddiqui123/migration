-- Verify schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/alter_table_add_pattern  on pg

BEGIN;

SELECT pattern FROM dashboard_public.object_type_attribute_language_variations LIMIT 1;

ROLLBACK;
