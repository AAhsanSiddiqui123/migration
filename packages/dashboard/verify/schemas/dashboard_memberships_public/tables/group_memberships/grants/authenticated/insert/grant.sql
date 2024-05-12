-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.group_memberships', 'insert', 'authenticated');
COMMIT;  

