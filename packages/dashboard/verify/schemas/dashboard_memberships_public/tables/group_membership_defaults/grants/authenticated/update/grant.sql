-- Verify: schemas/dashboard_memberships_public/tables/group_membership_defaults/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.group_membership_defaults', 'update', 'authenticated');
COMMIT;  

