-- Verify: schemas/dashboard_memberships_public/tables/app_admin_grants/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.app_admin_grants');
COMMIT;  

