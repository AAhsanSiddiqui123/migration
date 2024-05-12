-- Revert: schemas/dashboard_public/tables/action_items/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".action_items;
COMMIT;  

