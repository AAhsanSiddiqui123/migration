-- Revert: schemas/dashboard_public/tables/location_types/policies/auth_sel/policy/alterations/alt0000001502 from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".location_types;
COMMIT;  

