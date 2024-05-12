-- Verify: schemas/dashboard_public/tables/object_type_value_language_variations/indexes/object_type_value_language_variations_object_type_value_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_type_value_language_variations', 'object_type_value_language_variations_object_type_value_id_idx');
COMMIT;  

