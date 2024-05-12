-- Verify: schemas/dashboard_memberships_public/tables/memberships/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.memberships', 'update', 'authenticated');
COMMIT;  

