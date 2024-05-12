-- Verify: schemas/dashboard_public/tables/connected_accounts/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.connected_accounts');
COMMIT;  

