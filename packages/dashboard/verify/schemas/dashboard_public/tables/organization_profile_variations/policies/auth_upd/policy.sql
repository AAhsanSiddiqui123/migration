-- Verify: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.organization_profile_variations');
COMMIT;  

