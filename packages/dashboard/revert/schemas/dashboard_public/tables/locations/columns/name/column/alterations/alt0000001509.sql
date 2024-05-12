-- Revert: schemas/dashboard_public/tables/locations/columns/name/column/alterations/alt0000001509 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN name;
COMMIT;  

