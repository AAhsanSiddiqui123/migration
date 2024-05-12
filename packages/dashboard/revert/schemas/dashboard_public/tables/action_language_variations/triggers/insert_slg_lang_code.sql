-- Revert: schemas/dashboard_public/tables/action_language_variations/triggers/insert_slg_lang_code from pg

BEGIN;
DROP TRIGGER insert_slg_lang_code ON "dashboard_public".action_language_variations;
COMMIT;  

