-- Revert: schemas/dashboard_public/tables/data_tags/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags DROP COLUMN created_by;
ALTER TABLE "dashboard_public".data_tags DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".data_tags;


COMMIT;  

