-- Verify: schemas/dashboard_permissions_public/tables/group_member_permissions/table on pg

BEGIN;
SELECT verify_table('dashboard_permissions_public.group_member_permissions');
COMMIT;  

