-- Revert: schemas/dashboard_public/tables/action_item_types/policies/auth_sel_admin/policy from pg

BEGIN;
DROP POLICY auth_sel_admin ON "dashboard_public".action_item_types;
COMMIT;  

