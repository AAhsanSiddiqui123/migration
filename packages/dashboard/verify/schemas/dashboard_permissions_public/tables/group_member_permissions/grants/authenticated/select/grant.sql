-- Verify: schemas/dashboard_permissions_public/tables/group_member_permissions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_permissions_public.group_member_permissions', 'select', 'authenticated');
COMMIT;  

