-- Verify: schemas/dashboard_memberships_public/tables/group_admin_grants/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.group_admin_grants');
COMMIT;  

