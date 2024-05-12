-- Revert: schemas/dashboard_public/tables/locations/columns/bbox/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN bbox;
COMMIT;  

