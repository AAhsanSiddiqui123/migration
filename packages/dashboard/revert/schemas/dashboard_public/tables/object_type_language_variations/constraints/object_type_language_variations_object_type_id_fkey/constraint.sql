-- Revert: schemas/dashboard_public/tables/object_type_language_variations/constraints/object_type_language_variations_object_type_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_language_variations 
    DROP CONSTRAINT object_type_language_variations_object_type_id_fkey;

COMMIT;  

