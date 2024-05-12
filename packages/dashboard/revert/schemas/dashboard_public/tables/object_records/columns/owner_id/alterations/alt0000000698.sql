-- Revert: schemas/dashboard_public/tables/object_records/columns/owner_id/alterations/alt0000000698 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

