-- Verify: schemas/dashboard_permissions_public/tables/membership_permissions/table on pg

BEGIN;
SELECT verify_table('dashboard_permissions_public.membership_permissions');
COMMIT;  

