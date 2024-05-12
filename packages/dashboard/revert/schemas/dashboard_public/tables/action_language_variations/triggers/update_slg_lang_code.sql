-- Revert: schemas/dashboard_public/tables/action_language_variations/triggers/update_slg_lang_code from pg

BEGIN;
DROP TRIGGER update_slg_lang_code ON "dashboard_public".action_language_variations;
COMMIT;  

