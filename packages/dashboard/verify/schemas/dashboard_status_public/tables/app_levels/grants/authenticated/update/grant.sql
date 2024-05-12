-- Verify: schemas/dashboard_status_public/tables/app_levels/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_status_public.app_levels', 'update', 'authenticated');
COMMIT;  

