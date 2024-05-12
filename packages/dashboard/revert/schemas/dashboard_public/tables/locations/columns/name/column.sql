-- Revert: schemas/dashboard_public/tables/locations/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN name;
COMMIT;  

