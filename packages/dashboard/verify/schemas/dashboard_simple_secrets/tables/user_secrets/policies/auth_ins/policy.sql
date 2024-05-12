-- Verify: schemas/dashboard_simple_secrets/tables/user_secrets/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_simple_secrets.user_secrets');
COMMIT;  

