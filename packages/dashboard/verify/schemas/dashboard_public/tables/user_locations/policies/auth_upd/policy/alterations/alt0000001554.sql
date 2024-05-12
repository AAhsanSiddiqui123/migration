-- Verify: schemas/dashboard_public/tables/user_locations/policies/auth_upd/policy/alterations/alt0000001554 on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.user_locations');
COMMIT;  

