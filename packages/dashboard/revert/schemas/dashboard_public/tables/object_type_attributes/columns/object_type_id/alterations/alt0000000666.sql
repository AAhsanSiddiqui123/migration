-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/object_type_id/alterations/alt0000000666 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes 
    ALTER COLUMN object_type_id DROP NOT NULL;


COMMIT;  

