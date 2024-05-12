-- Revert: schemas/dashboard_public/tables/objects/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN name;
COMMIT;  

