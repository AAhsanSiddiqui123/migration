-- Revert: schemas/dashboard_public/tables/object_records/columns/object_type_attribute_id/alterations/alt0000000704 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records 
    ALTER COLUMN object_type_attribute_id DROP NOT NULL;


COMMIT;  

