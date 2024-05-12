-- Verify: schemas/dashboard_public/tables/impacts_conditions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.impacts_conditions');
COMMIT;  

