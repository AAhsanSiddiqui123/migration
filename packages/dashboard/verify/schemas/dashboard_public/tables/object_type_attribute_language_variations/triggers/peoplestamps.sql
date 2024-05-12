-- Verify schemas/dashboard_public/tables/object_type_attribute_language_variations/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.object_type_attribute_language_variations LIMIT 1;
SELECT updated_by FROM dashboard_public.object_type_attribute_language_variations LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_object_type_attribute_language_variations_moduser');

ROLLBACK;
