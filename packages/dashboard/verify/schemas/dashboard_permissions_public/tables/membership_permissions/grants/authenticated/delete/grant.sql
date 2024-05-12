-- Verify: schemas/dashboard_permissions_public/tables/membership_permissions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_permissions_public.membership_permissions', 'delete', 'authenticated');
COMMIT;  

