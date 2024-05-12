-- Verify: schemas/dashboard_memberships_public/tables/group_membership_defaults/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.group_membership_defaults');
COMMIT;  

