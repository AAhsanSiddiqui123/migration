-- Revert: schemas/dashboard_public/tables/object_type_value_language_variations/columns/id/alterations/alt0000001467 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_language_variations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

