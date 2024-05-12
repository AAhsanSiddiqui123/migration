-- Revert: schemas/dashboard_public/tables/object_records/triggers/object_records_object_id_immutable_tg from pg

BEGIN;
DROP TRIGGER object_records_object_id_immutable_tg ON "dashboard_public".object_records;
COMMIT;  

