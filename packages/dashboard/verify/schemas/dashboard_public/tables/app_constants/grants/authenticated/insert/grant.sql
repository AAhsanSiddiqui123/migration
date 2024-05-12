-- Verify: schemas/dashboard_public/tables/app_constants/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.app_constants', 'insert', 'authenticated');
COMMIT;  

