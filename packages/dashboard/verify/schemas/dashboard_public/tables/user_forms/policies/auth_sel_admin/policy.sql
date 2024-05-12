-- Verify: schemas/dashboard_public/tables/user_forms/policies/auth_sel_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_admin', 'dashboard_public.user_forms');
COMMIT;  

