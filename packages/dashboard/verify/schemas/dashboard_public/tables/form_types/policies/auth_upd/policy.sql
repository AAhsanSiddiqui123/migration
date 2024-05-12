-- Verify: schemas/dashboard_public/tables/form_types/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.form_types');
COMMIT;  

