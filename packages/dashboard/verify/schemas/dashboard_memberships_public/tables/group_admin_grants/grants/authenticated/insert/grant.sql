-- Verify: schemas/dashboard_memberships_public/tables/group_admin_grants/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.group_admin_grants', 'insert', 'authenticated');
COMMIT;  

