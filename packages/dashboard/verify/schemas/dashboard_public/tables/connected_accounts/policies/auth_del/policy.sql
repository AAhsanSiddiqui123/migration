-- Verify: schemas/dashboard_public/tables/connected_accounts/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.connected_accounts');
COMMIT;  

