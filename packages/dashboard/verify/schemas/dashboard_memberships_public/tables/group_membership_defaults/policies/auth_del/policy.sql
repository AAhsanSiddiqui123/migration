-- Verify: schemas/dashboard_memberships_public/tables/group_membership_defaults/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_memberships_public.group_membership_defaults');
COMMIT;  

