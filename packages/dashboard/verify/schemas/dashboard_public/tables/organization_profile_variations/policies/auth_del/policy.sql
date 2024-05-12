-- Verify: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.organization_profile_variations');
COMMIT;  

