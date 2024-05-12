-- Verify: schemas/dashboard_public/tables/language_dictionary/triggers/insert_inf_name on pg

BEGIN;
SELECT verify_trigger('dashboard_public.insert_inf_name');
COMMIT;  

