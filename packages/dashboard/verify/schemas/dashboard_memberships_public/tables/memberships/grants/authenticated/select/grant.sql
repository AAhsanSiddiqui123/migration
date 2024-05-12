-- Verify: schemas/dashboard_memberships_public/tables/memberships/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.memberships', 'select', 'authenticated');
COMMIT;  

