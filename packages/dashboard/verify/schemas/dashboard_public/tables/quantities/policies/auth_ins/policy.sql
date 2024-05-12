-- Verify: schemas/dashboard_public/tables/quantities/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.quantities');
COMMIT;  

