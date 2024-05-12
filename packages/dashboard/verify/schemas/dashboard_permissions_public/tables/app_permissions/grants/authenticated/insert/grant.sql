-- Verify: schemas/dashboard_permissions_public/tables/app_permissions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_permissions_public.app_permissions', 'insert', 'authenticated');
COMMIT;  

