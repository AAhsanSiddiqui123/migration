-- Revert: schemas/dashboard_public/tables/object_type_language_variations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_language_variations DROP COLUMN id;
COMMIT;  

