-- Verify: schemas/dashboard_limits_public/tables/group_member_limits/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_limits_public.group_member_limits');
COMMIT;  

