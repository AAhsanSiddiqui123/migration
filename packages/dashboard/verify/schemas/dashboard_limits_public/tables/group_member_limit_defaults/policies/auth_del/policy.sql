-- Verify: schemas/dashboard_limits_public/tables/group_member_limit_defaults/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_limits_public.group_member_limit_defaults');
COMMIT;  

