-- Revert: schemas/dashboard_public/tables/notification_preferences/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences DROP COLUMN created_by;
ALTER TABLE "dashboard_public".notification_preferences DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".notification_preferences;


COMMIT;  

