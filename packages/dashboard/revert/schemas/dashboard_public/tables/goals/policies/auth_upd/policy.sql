-- Revert: schemas/dashboard_public/tables/goals/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".goals;
COMMIT;  

