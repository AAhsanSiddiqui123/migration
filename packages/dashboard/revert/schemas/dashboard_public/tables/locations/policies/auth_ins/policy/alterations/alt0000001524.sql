-- Revert: schemas/dashboard_public/tables/locations/policies/auth_ins/policy/alterations/alt0000001524 from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".locations;
COMMIT;  

