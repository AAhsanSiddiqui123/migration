-- Revert: schemas/dashboard_public/tables/action_item_status_types/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".action_item_status_types;
COMMIT;  

