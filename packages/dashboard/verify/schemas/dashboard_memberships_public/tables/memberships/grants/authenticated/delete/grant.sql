-- Verify: schemas/dashboard_memberships_public/tables/memberships/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.memberships', 'delete', 'authenticated');
COMMIT;  

