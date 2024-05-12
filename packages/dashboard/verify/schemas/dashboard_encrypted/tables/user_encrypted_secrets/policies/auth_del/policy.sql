-- Verify: schemas/dashboard_encrypted/tables/user_encrypted_secrets/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_encrypted.user_encrypted_secrets');
COMMIT;  

