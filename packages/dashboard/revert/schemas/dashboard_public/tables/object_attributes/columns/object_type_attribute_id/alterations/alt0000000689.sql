-- Revert: schemas/dashboard_public/tables/object_attributes/columns/object_type_attribute_id/alterations/alt0000000689 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN object_type_attribute_id DROP NOT NULL;


COMMIT;  

