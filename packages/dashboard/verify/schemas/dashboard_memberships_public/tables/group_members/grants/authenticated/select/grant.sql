-- Verify: schemas/dashboard_memberships_public/tables/group_members/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.group_members', 'select', 'authenticated');
COMMIT;  

