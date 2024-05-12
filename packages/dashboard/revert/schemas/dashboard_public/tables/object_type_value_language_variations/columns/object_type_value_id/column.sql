-- Revert: schemas/dashboard_public/tables/object_type_value_language_variations/columns/object_type_value_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_language_variations DROP COLUMN object_type_value_id;
COMMIT;  

