-- Revert: schemas/dashboard_public/tables/object_attributes/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes DROP COLUMN location;
COMMIT;  

