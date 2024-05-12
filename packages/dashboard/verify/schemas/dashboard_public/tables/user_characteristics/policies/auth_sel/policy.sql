-- Verify: schemas/dashboard_public/tables/user_characteristics/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.user_characteristics');
COMMIT;  

