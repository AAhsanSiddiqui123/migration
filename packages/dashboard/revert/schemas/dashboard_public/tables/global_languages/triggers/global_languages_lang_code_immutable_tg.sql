-- Revert: schemas/dashboard_public/tables/global_languages/triggers/global_languages_lang_code_immutable_tg from pg

BEGIN;
DROP TRIGGER global_languages_lang_code_immutable_tg ON "dashboard_public".global_languages;
COMMIT;  

