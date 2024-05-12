-- Revert: schemas/dashboard_public/tables/locations/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN location;
COMMIT;  

