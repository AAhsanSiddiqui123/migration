-- Revert: schemas/dashboard_public/tables/notification_preferences/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences DROP COLUMN created_at;
ALTER TABLE "dashboard_public".notification_preferences DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".notification_preferences;

COMMIT;  

