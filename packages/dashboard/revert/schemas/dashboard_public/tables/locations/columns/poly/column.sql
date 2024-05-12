-- Revert: schemas/dashboard_public/tables/locations/columns/poly/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN poly;
COMMIT;  

