-- Verify: schemas/dashboard_public/tables/form_types/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.form_types');
COMMIT;  

