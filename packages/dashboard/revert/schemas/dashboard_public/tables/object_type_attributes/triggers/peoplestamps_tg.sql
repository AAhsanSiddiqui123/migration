-- Revert: schemas/dashboard_public/tables/object_type_attributes/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN created_by;
ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".object_type_attributes;


COMMIT;  

