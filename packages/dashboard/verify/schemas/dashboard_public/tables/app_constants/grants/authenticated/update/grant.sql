-- Verify: schemas/dashboard_public/tables/app_constants/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.app_constants', 'update', 'authenticated');
COMMIT;  

