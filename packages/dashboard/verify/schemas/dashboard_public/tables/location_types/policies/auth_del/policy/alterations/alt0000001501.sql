-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_del/policy/alterations/alt0000001501 on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.location_types');
COMMIT;  

