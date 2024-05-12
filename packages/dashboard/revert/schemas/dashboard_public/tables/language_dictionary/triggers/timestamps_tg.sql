-- Revert: schemas/dashboard_public/tables/language_dictionary/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary DROP COLUMN created_at;
ALTER TABLE "dashboard_public".language_dictionary DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".language_dictionary;

COMMIT;  

