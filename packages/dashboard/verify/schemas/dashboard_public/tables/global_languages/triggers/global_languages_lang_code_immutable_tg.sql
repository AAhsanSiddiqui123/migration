-- Verify: schemas/dashboard_public/tables/global_languages/triggers/global_languages_lang_code_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.global_languages_lang_code_immutable_tg');
COMMIT;  

