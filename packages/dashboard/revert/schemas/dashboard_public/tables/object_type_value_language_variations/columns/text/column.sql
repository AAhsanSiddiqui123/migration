-- Revert: schemas/dashboard_public/tables/object_type_value_language_variations/columns/text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_language_variations DROP COLUMN text;
COMMIT;  

