-- Verify: schemas/dashboard_public/tables/user_locations/policies/auth_ins/policy/alterations/alt0000001552 on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.user_locations');
COMMIT;  

