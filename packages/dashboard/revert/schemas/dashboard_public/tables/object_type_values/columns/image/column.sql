-- Revert: schemas/dashboard_public/tables/object_type_values/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values DROP COLUMN image;
COMMIT;  

