-- Verify: schemas/dashboard_simple_secrets/tables/user_secrets/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_simple_secrets.user_secrets');
COMMIT;  

