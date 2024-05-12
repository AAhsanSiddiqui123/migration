-- Revert schemas/dashboard_public/tables/user_forms/policies/auth_sel_admin_privileged_data from pg

BEGIN;



DROP POLICY auth_sel_admin_privileged_data ON dashboard_public.user_forms;

COMMIT;
