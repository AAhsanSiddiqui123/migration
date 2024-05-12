-- Verify: schemas/dashboard_public/tables/user_locations/policies/auth_sel/policy/alterations/alt0000001553 on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.user_locations');
COMMIT;  

