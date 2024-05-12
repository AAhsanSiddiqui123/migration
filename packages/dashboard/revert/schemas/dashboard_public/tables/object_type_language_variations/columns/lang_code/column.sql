-- Revert: schemas/dashboard_public/tables/object_type_language_variations/columns/lang_code/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_language_variations DROP COLUMN lang_code;
COMMIT;  

