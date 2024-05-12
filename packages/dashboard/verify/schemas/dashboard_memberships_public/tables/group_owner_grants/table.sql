-- Verify: schemas/dashboard_memberships_public/tables/group_owner_grants/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.group_owner_grants');
COMMIT;  

