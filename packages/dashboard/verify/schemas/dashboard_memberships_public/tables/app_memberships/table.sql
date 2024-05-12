-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.app_memberships');
COMMIT;  

