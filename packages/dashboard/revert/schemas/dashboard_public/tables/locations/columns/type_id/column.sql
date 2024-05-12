-- Revert: schemas/dashboard_public/tables/locations/columns/type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN type_id;
COMMIT;  

