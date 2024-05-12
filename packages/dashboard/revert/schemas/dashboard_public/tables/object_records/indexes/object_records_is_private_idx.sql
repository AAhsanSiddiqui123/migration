-- Revert: schemas/dashboard_public/tables/object_records/indexes/object_records_is_private_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_records_is_private_idx;
COMMIT;  

