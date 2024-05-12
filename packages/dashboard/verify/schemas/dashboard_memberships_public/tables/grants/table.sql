-- Verify: schemas/dashboard_memberships_public/tables/grants/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.grants');
COMMIT;  

