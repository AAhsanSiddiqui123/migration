-- Verify: schemas/dashboard_permissions_public/tables/membership_permission_defaults/table on pg

BEGIN;
SELECT verify_table('dashboard_permissions_public.membership_permission_defaults');
COMMIT;  

