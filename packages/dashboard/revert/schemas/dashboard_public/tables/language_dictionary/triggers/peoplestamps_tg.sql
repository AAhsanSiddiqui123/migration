-- Revert: schemas/dashboard_public/tables/language_dictionary/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary DROP COLUMN created_by;
ALTER TABLE "dashboard_public".language_dictionary DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".language_dictionary;


COMMIT;  

