-- Verify: schemas/dashboard_memberships_public/tables/group_membership_defaults/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.group_membership_defaults', 'delete', 'authenticated');
COMMIT;  

