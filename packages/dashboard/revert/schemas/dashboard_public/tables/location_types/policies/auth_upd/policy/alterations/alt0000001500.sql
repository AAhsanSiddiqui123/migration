-- Revert: schemas/dashboard_public/tables/location_types/policies/auth_upd/policy/alterations/alt0000001500 from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".location_types;
COMMIT;  

