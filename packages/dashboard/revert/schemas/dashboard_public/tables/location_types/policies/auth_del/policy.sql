-- Revert: schemas/dashboard_public/tables/location_types/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".location_types;
COMMIT;  

