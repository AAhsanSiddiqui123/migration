-- Verify: schemas/dashboard_public/tables/phone_numbers/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.phone_numbers');
COMMIT;  

