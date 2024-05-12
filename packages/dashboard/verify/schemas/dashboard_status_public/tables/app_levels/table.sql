-- Verify: schemas/dashboard_status_public/tables/app_levels/table on pg

BEGIN;
SELECT verify_table('dashboard_status_public.app_levels');
COMMIT;  

