-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_ins/policy/alterations/alt0000001499 on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.location_types');
COMMIT;  

