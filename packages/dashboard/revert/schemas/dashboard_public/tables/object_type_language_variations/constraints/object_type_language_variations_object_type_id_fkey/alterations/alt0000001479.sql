-- Revert: schemas/dashboard_public/tables/object_type_language_variations/constraints/object_type_language_variations_object_type_id_fkey/alterations/alt0000001479 from pg

BEGIN;
COMMENT ON CONSTRAINT object_type_language_variations_object_type_id_fkey ON "dashboard_public".object_type_language_variations IS NULL;
COMMIT;  

