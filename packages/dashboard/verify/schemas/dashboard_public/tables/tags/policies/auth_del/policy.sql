-- Verify: schemas/dashboard_public/tables/tags/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.tags');
COMMIT;  

