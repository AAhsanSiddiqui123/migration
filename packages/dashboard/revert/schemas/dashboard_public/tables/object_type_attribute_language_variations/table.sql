-- Revert schemas/dashboard_public/tables/object_type_attribute_language_variations/table from pg

BEGIN;

DROP TABLE dashboard_public.object_type_attribute_language_variations;

COMMIT;
