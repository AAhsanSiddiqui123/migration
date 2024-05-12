-- Verify: schemas/dashboard_permissions_public/tables/app_permissions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_permissions_public.app_permissions', 'select', 'authenticated');
COMMIT;  

