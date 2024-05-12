-- Revert: schemas/dashboard_public/tables/group_goals/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".group_goals;
COMMIT;  

