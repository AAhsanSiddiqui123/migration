-- Verify: schemas/dashboard_public/tables/phone_numbers/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.phone_numbers');
COMMIT;  

