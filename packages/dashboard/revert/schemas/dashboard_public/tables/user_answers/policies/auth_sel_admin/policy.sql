-- Revert: schemas/dashboard_public/tables/user_answers/policies/auth_sel_admin/policy from pg

BEGIN;
DROP POLICY auth_sel_admin ON "dashboard_public".user_answers;
COMMIT;  

