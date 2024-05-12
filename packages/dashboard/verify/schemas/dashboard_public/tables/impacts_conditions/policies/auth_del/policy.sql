-- Verify: schemas/dashboard_public/tables/impacts_conditions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.impacts_conditions');
COMMIT;  

