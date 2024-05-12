-- Revert: schemas/dashboard_public/tables/notifications/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN created_at;
ALTER TABLE "dashboard_public".notifications DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".notifications;

COMMIT;  

