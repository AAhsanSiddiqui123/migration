-- Deploy dashboard:schemas/dashboard_public/tables/object_type_attribute_language_variations/alterations/object_type_attribute_language_variations_lang_code_chk to pg

BEGIN;

ALTER TABLE dashboard_public.object_type_attribute_language_variations ADD CONSTRAINT object_type_attribute_language_variations_lang_code_chk CHECK (character_length(lang_code) <= 10);

COMMIT;
