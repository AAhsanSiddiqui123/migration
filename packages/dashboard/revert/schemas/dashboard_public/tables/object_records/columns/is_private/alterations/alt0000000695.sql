-- Revert: schemas/dashboard_public/tables/object_records/columns/is_private/alterations/alt0000000695 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records 
    ALTER COLUMN is_private DROP NOT NULL;


COMMIT;  

