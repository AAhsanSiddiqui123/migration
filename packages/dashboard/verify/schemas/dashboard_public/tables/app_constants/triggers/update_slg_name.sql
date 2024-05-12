-- Verify: schemas/dashboard_public/tables/app_constants/triggers/update_slg_name on pg

BEGIN;
SELECT verify_trigger('dashboard_public.update_slg_name');
COMMIT;  

