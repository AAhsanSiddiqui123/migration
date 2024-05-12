-- Verify: schemas/dashboard_public/tables/actions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.actions');
COMMIT;  

