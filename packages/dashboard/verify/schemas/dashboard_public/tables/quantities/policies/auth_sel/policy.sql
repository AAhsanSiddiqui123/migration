-- Verify: schemas/dashboard_public/tables/quantities/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.quantities');
COMMIT;  

