-- Verify: schemas/dashboard_public/tables/organization_profiles/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.organization_profiles');
COMMIT;  

