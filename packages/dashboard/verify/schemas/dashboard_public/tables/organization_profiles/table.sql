-- Verify: schemas/dashboard_public/tables/organization_profiles/table on pg

BEGIN;
SELECT verify_table('dashboard_public.organization_profiles');
COMMIT;  

