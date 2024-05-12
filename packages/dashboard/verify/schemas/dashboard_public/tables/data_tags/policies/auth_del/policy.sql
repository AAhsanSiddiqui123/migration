-- Verify: schemas/dashboard_public/tables/data_tags/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.data_tags');
COMMIT;  

