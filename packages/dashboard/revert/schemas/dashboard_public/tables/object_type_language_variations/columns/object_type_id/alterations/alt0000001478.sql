-- Revert: schemas/dashboard_public/tables/object_type_language_variations/columns/object_type_id/alterations/alt0000001478 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_language_variations 
    ALTER COLUMN object_type_id DROP NOT NULL;


COMMIT;  

