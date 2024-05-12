-- Revert: schemas/dashboard_public/tables/objects/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN data;
COMMIT;  

