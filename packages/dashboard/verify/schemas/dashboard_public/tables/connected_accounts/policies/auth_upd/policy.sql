-- Verify: schemas/dashboard_public/tables/connected_accounts/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.connected_accounts');
COMMIT;  

