-- Verify: schemas/dashboard_simple_secrets/tables/user_secrets/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_simple_secrets.user_secrets');
COMMIT;  

