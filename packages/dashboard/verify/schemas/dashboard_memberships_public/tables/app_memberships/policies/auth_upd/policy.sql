-- Verify: schemas/dashboard_memberships_public/tables/app_memberships/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_memberships_public.app_memberships');
COMMIT;  

