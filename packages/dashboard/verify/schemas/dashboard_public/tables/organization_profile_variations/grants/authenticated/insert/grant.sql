-- Verify: schemas/dashboard_public/tables/organization_profile_variations/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.organization_profile_variations', 'insert', 'authenticated');
COMMIT;  

