-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/is_required/alterations/alt0000000664 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes 
    ALTER COLUMN is_required DROP DEFAULT;

COMMIT;  

