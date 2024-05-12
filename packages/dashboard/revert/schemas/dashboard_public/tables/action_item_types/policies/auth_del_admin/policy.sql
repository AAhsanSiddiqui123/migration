-- Revert: schemas/dashboard_public/tables/action_item_types/policies/auth_del_admin/policy from pg

BEGIN;
DROP POLICY auth_del_admin ON "dashboard_public".action_item_types;
COMMIT;  

