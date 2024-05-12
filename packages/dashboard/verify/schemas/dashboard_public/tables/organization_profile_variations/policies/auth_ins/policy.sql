-- Verify: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.organization_profile_variations');
COMMIT;  

