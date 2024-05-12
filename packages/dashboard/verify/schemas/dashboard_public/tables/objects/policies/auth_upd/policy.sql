-- Verify: schemas/dashboard_public/tables/objects/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.objects');
COMMIT;  

