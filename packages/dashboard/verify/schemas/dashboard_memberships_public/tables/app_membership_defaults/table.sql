-- Verify: schemas/dashboard_memberships_public/tables/app_membership_defaults/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.app_membership_defaults');
COMMIT;  

