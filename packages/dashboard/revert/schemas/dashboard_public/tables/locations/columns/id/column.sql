-- Revert: schemas/dashboard_public/tables/locations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN id;
COMMIT;  

