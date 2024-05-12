-- Revert: schemas/dashboard_public/tables/object_records/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN created_by;
ALTER TABLE "dashboard_public".object_records DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".object_records;


COMMIT;  

