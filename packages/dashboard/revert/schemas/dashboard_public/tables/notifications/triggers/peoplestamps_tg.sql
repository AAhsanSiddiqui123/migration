-- Revert: schemas/dashboard_public/tables/notifications/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN created_by;
ALTER TABLE "dashboard_public".notifications DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".notifications;


COMMIT;  

