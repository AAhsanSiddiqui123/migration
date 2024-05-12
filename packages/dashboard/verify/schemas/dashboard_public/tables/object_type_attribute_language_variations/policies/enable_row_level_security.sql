-- Verify schemas/dashboard_public/tables/object_type_attribute_language_variations/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.object_type_attribute_language_variations');

ROLLBACK;
