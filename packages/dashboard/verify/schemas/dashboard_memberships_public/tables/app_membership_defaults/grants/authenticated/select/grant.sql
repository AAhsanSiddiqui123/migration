-- Verify: schemas/dashboard_memberships_public/tables/app_membership_defaults/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.app_membership_defaults', 'select', 'authenticated');
COMMIT;  

