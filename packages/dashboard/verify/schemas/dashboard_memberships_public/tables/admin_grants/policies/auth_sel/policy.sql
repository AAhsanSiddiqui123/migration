-- Verify: schemas/dashboard_memberships_public/tables/admin_grants/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_memberships_public.admin_grants');
COMMIT;  

