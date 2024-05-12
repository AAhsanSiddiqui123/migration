-- Revert: schemas/dashboard_public/tables/messages/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".messages DROP COLUMN created_at;
ALTER TABLE "dashboard_public".messages DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".messages;

COMMIT;  

