-- Revert: schemas/dashboard_public/tables/language_dictionary/triggers/update_slg_lang_code from pg

BEGIN;
DROP TRIGGER update_slg_lang_code ON "dashboard_public".language_dictionary;
COMMIT;  

