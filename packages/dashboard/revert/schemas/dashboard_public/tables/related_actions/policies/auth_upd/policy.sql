-- Revert: schemas/dashboard_public/tables/related_actions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".related_actions;
COMMIT;  

