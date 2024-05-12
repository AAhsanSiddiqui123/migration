-- Revert: schemas/dashboard_public/tables/object_type_value_language_variations/columns/lang_code/alterations/alt0000001468 from pg

BEGIN;
ALTER TABLE "dashboard_public".object_type_value_language_variations DROP CONSTRAINT object_type_value_language_variations_lang_code_chk;
COMMIT;  

