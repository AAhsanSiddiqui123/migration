-- Revert: schemas/dashboard_public/tables/objects/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN created_by;
ALTER TABLE "dashboard_public".objects DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".objects;


COMMIT;  

