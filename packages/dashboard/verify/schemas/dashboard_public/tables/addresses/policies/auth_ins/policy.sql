-- Verify: schemas/dashboard_public/tables/addresses/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.addresses');
COMMIT;  

