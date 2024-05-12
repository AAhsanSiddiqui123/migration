-- Verify: schemas/dashboard_public/tables/user_settings/triggers/update_slg_lang_code on pg

BEGIN;
SELECT verify_trigger('dashboard_public.update_slg_lang_code');
COMMIT;  

