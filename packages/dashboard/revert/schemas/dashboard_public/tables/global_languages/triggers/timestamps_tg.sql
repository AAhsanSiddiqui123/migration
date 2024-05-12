-- Revert: schemas/dashboard_public/tables/global_languages/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages DROP COLUMN created_at;
ALTER TABLE "dashboard_public".global_languages DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".global_languages;

COMMIT;  

