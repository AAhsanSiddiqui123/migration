-- Revert: schemas/dashboard_public/tables/user_settings/triggers/insert_slg_lang_code from pg

BEGIN;
DROP TRIGGER insert_slg_lang_code ON "dashboard_public".user_settings;
COMMIT;  

