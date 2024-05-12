-- Verify: schemas/dashboard_public/tables/organization_profiles/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.organization_profiles', 'delete', 'authenticated');
COMMIT;  

