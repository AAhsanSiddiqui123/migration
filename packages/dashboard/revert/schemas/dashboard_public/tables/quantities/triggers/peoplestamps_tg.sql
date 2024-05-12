-- Revert: schemas/dashboard_public/tables/quantities/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities DROP COLUMN created_by;
ALTER TABLE "dashboard_public".quantities DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".quantities;


COMMIT;  

