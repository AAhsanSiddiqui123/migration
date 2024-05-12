-- Verify: schemas/dashboard_public/tables/app_constants/triggers/insert_slg_name on pg

BEGIN;
SELECT verify_trigger('dashboard_public.insert_slg_name');
COMMIT;  

