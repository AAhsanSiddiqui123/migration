-- Revert: schemas/dashboard_public/tables/object_types/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types DROP COLUMN created_at;
ALTER TABLE "dashboard_public".object_types DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".object_types;

COMMIT;  

