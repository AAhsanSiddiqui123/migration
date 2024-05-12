-- Revert: schemas/dashboard_public/tables/tags/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".tags DROP COLUMN created_by;
ALTER TABLE "dashboard_public".tags DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".tags;


COMMIT;  

