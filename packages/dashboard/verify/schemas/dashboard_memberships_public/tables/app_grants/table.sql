-- Verify: schemas/dashboard_memberships_public/tables/app_grants/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.app_grants');
COMMIT;  

