-- Verify: schemas/dashboard_permissions_public/tables/app_permission_defaults/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_permissions_public.app_permission_defaults', 'delete', 'authenticated');
COMMIT;  

