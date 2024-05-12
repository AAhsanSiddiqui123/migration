-- Verify schemas/dashboard_public/tables/user_forms/policies/auth_sel_admin_privileged_data  on pg

BEGIN;

SELECT verify_policy ('auth_sel_admin_privileged_data', 'dashboard_public.user_forms');


ROLLBACK;
