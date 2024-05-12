-- Verify: schemas/dashboard_permissions_public/tables/app_permissions/table on pg

BEGIN;
SELECT verify_table('dashboard_permissions_public.app_permissions');
COMMIT;  

