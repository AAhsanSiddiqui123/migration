-- Revert: schemas/dashboard_public/tables/object_records/constraints/object_records_unit_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records 
    DROP CONSTRAINT object_records_unit_id_fkey;

COMMIT;  

