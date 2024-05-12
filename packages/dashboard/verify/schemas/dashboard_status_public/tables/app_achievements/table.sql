-- Verify: schemas/dashboard_status_public/tables/app_achievements/table on pg

BEGIN;
SELECT verify_table('dashboard_status_public.app_achievements');
COMMIT;  

