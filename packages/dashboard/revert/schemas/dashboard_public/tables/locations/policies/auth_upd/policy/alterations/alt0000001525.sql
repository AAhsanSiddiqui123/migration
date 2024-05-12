-- Revert: schemas/dashboard_public/tables/locations/policies/auth_upd/policy/alterations/alt0000001525 from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".locations;
COMMIT;  

