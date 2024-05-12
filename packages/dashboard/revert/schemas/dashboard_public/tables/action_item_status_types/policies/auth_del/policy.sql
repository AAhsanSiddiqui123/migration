-- Revert: schemas/dashboard_public/tables/action_item_status_types/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".action_item_status_types;
COMMIT;  

