-- Verify: schemas/dashboard_public/tables/objects/policies/auth_sel_public/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_public', 'dashboard_public.objects');
COMMIT;  

