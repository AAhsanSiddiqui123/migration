-- Verify: schemas/dashboard_memberships_public/tables/admin_grants/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.admin_grants');
COMMIT;  

