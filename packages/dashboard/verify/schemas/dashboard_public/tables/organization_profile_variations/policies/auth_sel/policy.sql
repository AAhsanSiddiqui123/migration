-- Verify: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.organization_profile_variations');
COMMIT;  

