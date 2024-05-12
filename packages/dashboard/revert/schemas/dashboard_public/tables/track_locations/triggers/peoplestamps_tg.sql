-- Revert: schemas/dashboard_public/tables/track_locations/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".track_locations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".track_locations;


COMMIT;  

