-- Verify: schemas/dashboard_memberships_public/tables/owner_grants/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.owner_grants');
COMMIT;  

