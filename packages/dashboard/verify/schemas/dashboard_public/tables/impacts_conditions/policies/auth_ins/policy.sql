-- Verify: schemas/dashboard_public/tables/impacts_conditions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.impacts_conditions');
COMMIT;  

