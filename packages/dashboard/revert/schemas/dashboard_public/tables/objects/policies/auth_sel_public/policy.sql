-- Revert: schemas/dashboard_public/tables/objects/policies/auth_sel_public/policy from pg

BEGIN;
DROP POLICY auth_sel_public ON "dashboard_public".objects;
COMMIT;  

