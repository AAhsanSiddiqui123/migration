-- Revert: schemas/dashboard_public/tables/object_type_language_variations/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_language_variations DROP COLUMN name;
COMMIT;  

