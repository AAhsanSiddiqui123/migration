-- Revert: schemas/dashboard_public/tables/global_languages/triggers/insert_slg_lang_code from pg

BEGIN;
DROP TRIGGER insert_slg_lang_code ON "dashboard_public".global_languages;
COMMIT;  

