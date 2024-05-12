-- Revert: schemas/dashboard_public/tables/objects/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".objects;
COMMIT;  

