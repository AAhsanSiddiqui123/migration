-- Verify: schemas/dashboard_public/tables/quantities/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.quantities');
COMMIT;  

