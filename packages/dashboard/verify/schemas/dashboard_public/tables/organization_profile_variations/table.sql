-- Verify: schemas/dashboard_public/tables/organization_profile_variations/table on pg

BEGIN;
SELECT verify_table('dashboard_public.organization_profile_variations');
COMMIT;  

