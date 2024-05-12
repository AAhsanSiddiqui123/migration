-- Revert: schemas/dashboard_status_public/tables/app_level_requirements/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_level_requirements DROP COLUMN created_at;
ALTER TABLE "dashboard_status_public".app_level_requirements DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_status_public".app_level_requirements;

COMMIT;  

