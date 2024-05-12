-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_memberships_public.app_memberships');
COMMIT;  

