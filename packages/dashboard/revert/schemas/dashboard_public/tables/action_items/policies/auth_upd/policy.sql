-- Revert: schemas/dashboard_public/tables/action_items/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".action_items;
COMMIT;  

