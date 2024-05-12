-- Deploy dashboard:schemas/dashboard_public/tables/data_tag_language_variations/alterations/data_tag_language_variations_lang_code_chk to pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations ADD CONSTRAINT data_tag_language_variations_lang_code_chk CHECK (character_length(lang_code) <= 10);

COMMIT;
