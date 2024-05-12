-- Verify: schemas/dashboard_limits_public/tables/group_member_limits/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_limits_public.group_member_limits');
COMMIT;  

