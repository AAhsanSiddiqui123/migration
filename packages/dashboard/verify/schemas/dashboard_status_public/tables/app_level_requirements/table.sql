-- Verify: schemas/dashboard_status_public/tables/app_level_requirements/table on pg

BEGIN;
SELECT verify_table('dashboard_status_public.app_level_requirements');
COMMIT;  

