-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.app_memberships', 'select', 'authenticated');
COMMIT;  

