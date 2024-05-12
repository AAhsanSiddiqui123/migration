-- Revert: schemas/dashboard_public/tables/object_type_language_variations/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_language_variations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".object_type_language_variations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".object_type_language_variations;


COMMIT;  

