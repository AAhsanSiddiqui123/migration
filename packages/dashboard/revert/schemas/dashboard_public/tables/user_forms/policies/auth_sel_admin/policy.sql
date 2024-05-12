-- Revert: schemas/dashboard_public/tables/user_forms/policies/auth_sel_admin/policy from pg

BEGIN;
DROP POLICY auth_sel_admin ON "dashboard_public".user_forms;
COMMIT;  

