-- Revert: schemas/dashboard_public/tables/object_records/columns/id/alterations/alt0000000694 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

