-- Revert: schemas/dashboard_public/tables/global_languages/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages DROP COLUMN created_by;
ALTER TABLE "dashboard_public".global_languages DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".global_languages;


COMMIT;  

