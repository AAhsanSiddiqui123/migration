-- Verify: schemas/dashboard_limits_public/tables/membership_limit_defaults/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_limits_public.membership_limit_defaults');
COMMIT;  

