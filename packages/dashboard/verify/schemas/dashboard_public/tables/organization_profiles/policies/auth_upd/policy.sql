-- Verify: schemas/dashboard_public/tables/organization_profiles/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.organization_profiles');
COMMIT;  

