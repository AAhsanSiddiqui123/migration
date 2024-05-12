-- Verify: schemas/dashboard_public/tables/objects/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.objects');
COMMIT;  

