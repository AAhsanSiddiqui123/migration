-- Verify: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_permissions_public.group_member_permission_defaults', 'delete', 'authenticated');
COMMIT;  

