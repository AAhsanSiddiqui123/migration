-- Revert: schemas/dashboard_public/tables/objects/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN location;
COMMIT;  

