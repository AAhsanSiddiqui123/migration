-- Revert schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/alter_table_add_pattern from pg

BEGIN;

ALTER TABLE dashboard_public.object_type_attribute_language_variations
    DROP COLUMN pattern;

COMMIT;
