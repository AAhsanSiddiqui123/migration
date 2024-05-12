-- Verify: schemas/dashboard_public/tables/phone_numbers/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.phone_numbers');
COMMIT;  

