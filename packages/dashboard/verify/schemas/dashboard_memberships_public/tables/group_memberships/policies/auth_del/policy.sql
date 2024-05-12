-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_memberships_public.group_memberships');
COMMIT;  

