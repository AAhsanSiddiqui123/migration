-- Verify: schemas/dashboard_permissions_public/tables/membership_permission_defaults/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_permissions_public.membership_permission_defaults', 'select', 'authenticated');
COMMIT;  

