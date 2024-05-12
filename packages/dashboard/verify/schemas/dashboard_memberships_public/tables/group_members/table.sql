-- Verify: schemas/dashboard_memberships_public/tables/group_members/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.group_members');
COMMIT;  

