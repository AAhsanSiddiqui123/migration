-- Verify: schemas/dashboard_memberships_public/tables/app_membership_defaults/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_memberships_public.app_membership_defaults');
COMMIT;  

