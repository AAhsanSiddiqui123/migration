-- Revert: schemas/dashboard_public/tables/tracks/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN created_by;
ALTER TABLE "dashboard_public".tracks DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".tracks;


COMMIT;  

