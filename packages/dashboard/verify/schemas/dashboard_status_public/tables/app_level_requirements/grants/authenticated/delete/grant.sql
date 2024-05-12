-- Verify: schemas/dashboard_status_public/tables/app_level_requirements/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_status_public.app_level_requirements', 'delete', 'authenticated');
COMMIT;  

