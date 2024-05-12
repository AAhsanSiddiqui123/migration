-- Verify: schemas/dashboard_public/tables/organization_profile_variations/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.organization_profile_variations', 'delete', 'authenticated');
COMMIT;  

