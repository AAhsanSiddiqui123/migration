-- Verify: schemas/dashboard_limits_public/tables/membership_limits/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_limits_public.membership_limits');
COMMIT;  

