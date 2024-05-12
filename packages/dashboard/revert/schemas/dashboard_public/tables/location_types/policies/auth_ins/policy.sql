-- Revert: schemas/dashboard_public/tables/location_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".location_types;
COMMIT;  

