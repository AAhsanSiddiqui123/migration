-- Revert: schemas/dashboard_public/tables/location_types/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".location_types;
COMMIT;  

