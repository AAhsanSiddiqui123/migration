-- Revert: schemas/dashboard_public/tables/object_records/constraints/object_records_value_id_fkey/alterations/alt0000000701 from pg

BEGIN;
COMMENT ON CONSTRAINT object_records_value_id_fkey ON "dashboard_public".object_records IS NULL;
COMMIT;  

