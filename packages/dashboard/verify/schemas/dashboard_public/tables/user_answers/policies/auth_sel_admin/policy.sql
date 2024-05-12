-- Verify: schemas/dashboard_public/tables/user_answers/policies/auth_sel_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_admin', 'dashboard_public.user_answers');
COMMIT;  

