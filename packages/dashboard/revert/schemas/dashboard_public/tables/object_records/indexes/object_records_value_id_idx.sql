-- Revert: schemas/dashboard_public/tables/object_records/indexes/object_records_value_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_records_value_id_idx;
COMMIT;  

