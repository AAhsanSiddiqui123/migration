-- Revert: schemas/dashboard_public/tables/object_records/columns/object_id/alterations/alt0000000702 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records 
    ALTER COLUMN object_id DROP NOT NULL;


COMMIT;  

