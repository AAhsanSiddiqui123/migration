-- Revert: schemas/dashboard_public/tables/object_type_language_variations/indexes/object_type_language_variations_object_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_type_language_variations_object_type_id_idx;
COMMIT;  

