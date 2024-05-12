-- Revert: schemas/dashboard_public/tables/action_item_status_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".action_item_status_types;
COMMIT;  

