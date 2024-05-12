-- Verify: schemas/dashboard_public/tables/quantities/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.quantities');
COMMIT;  

