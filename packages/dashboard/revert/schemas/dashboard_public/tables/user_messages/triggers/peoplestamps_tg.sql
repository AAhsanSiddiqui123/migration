-- Revert: schemas/dashboard_public/tables/user_messages/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_messages DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_messages DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_messages;


COMMIT;  

