-- Verify: schemas/dashboard_public/tables/app_constants/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.app_constants', 'delete', 'authenticated');
COMMIT;  

