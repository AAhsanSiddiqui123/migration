-- Revert: schemas/dashboard_public/tables/locations/columns/coords/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN coords;
COMMIT;  

