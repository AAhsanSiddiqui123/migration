-- Verify: schemas/dashboard_public/tables/organization_profiles/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.organization_profiles');
COMMIT;  

