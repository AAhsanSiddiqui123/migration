-- Verify: schemas/dashboard_limits_public/tables/membership_limits/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_limits_public.membership_limits');
COMMIT;  

