-- Verify: schemas/dashboard_public/tables/language_dictionary/triggers/update_inf_name on pg

BEGIN;
SELECT verify_trigger('dashboard_public.update_inf_name');
COMMIT;  

