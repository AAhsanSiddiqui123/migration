-- Revert: schemas/dashboard_public/tables/objects/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".objects;
COMMIT;  

