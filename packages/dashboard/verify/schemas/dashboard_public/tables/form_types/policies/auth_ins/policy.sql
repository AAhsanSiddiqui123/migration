-- Verify: schemas/dashboard_public/tables/form_types/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.form_types');
COMMIT;  

