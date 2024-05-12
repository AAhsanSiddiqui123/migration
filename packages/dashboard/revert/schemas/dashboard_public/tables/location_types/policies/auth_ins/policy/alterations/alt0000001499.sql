-- Revert: schemas/dashboard_public/tables/location_types/policies/auth_ins/policy/alterations/alt0000001499 from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".location_types;
COMMIT;  

