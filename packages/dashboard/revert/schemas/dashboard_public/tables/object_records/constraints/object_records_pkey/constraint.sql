-- Revert: schemas/dashboard_public/tables/object_records/constraints/object_records_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records 
    DROP CONSTRAINT object_records_pkey;

COMMIT;  

