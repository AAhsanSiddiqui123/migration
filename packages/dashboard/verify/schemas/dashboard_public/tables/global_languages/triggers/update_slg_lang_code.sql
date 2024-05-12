-- Verify: schemas/dashboard_public/tables/global_languages/triggers/update_slg_lang_code on pg

BEGIN;
SELECT verify_trigger('dashboard_public.update_slg_lang_code');
COMMIT;  

