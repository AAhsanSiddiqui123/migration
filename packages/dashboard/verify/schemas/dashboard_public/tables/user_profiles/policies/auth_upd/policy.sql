-- Verify: schemas/dashboard_public/tables/user_profiles/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.user_profiles');
COMMIT;  

