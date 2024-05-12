-- Verify schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/alter_table_add_object_type_attribute_id  on pg

BEGIN;

SELECT object_type_attribute_id FROM dashboard_public.object_type_attribute_language_variations LIMIT 1;

ROLLBACK;
