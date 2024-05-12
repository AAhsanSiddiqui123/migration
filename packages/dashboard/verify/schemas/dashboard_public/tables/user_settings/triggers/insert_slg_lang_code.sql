-- Verify: schemas/dashboard_public/tables/user_settings/triggers/insert_slg_lang_code on pg

BEGIN;
SELECT verify_trigger('dashboard_public.insert_slg_lang_code');
COMMIT;  

