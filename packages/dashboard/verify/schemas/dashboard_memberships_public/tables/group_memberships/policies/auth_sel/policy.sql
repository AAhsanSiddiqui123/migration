-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_memberships_public.group_memberships');
COMMIT;  

