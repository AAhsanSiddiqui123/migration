-- Verify: schemas/dashboard_public/tables/action_language_variations/triggers/insert_slg_lang_code on pg

BEGIN;
SELECT verify_trigger('dashboard_public.insert_slg_lang_code');
COMMIT;  

