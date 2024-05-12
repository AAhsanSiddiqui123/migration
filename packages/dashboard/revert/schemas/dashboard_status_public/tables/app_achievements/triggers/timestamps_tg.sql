-- Revert: schemas/dashboard_status_public/tables/app_achievements/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_achievements DROP COLUMN created_at;
ALTER TABLE "dashboard_status_public".app_achievements DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_status_public".app_achievements;

COMMIT;  

