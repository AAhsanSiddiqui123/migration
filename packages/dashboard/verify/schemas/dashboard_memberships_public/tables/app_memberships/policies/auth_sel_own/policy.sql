-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/policies/auth_sel_own/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_own', 'dashboard_memberships_public.app_memberships');
COMMIT;  

