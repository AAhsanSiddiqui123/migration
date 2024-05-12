-- Verify dashboard:schemas/dashboard_public/tables/object_type_attribute_language_variations/indexes/object_type_attribute_language_variations_object_type_attribute_id_lang_code_unique_idx on pg

BEGIN;

SELECT verify_index ('dashboard_public.data_tag_language_variations', 'oalv_object_type_attribute_id_lang_code_unique_idx');

ROLLBACK;
