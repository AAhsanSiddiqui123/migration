-- Revert: schemas/dashboard_public/tables/messages/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN created_by;
ALTER TABLE "dashboard_public".messages DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".messages;


COMMIT;  

