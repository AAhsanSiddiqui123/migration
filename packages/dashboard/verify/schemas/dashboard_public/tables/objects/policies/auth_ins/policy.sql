-- Verify: schemas/dashboard_public/tables/objects/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.objects');
COMMIT;  

