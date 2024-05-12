-- Revert: schemas/dashboard_public/tables/locations/columns/location_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN location_type;
COMMIT;  

