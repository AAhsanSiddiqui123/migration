-- Revert: schemas/dashboard_public/tables/object_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types DROP COLUMN name;
COMMIT;  

