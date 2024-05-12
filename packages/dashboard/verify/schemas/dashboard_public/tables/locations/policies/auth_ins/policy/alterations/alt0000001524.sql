-- Verify: schemas/dashboard_public/tables/locations/policies/auth_ins/policy/alterations/alt0000001524 on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.locations');
COMMIT;  

