-- Verify: schemas/dashboard_public/tables/units/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.units');
COMMIT;  

