-- Revert: schemas/dashboard_public/tables/locations/policies/auth_sel/policy/alterations/alt0000001530 from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".locations;
COMMIT;  

