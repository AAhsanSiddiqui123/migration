-- Revert: schemas/dashboard_public/tables/object_records/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN created_at;
ALTER TABLE "dashboard_public".object_records DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".object_records;

COMMIT;  

