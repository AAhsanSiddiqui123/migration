-- Revert: schemas/dashboard_public/tables/app_constants/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants DROP COLUMN created_at;
ALTER TABLE "dashboard_public".app_constants DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".app_constants;

COMMIT;  

