-- Verify: schemas/dashboard_public/tables/impacts_conditions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.impacts_conditions');
COMMIT;  

