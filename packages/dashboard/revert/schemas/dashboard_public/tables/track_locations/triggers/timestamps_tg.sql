-- Revert: schemas/dashboard_public/tables/track_locations/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations DROP COLUMN created_at;
ALTER TABLE "dashboard_public".track_locations DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".track_locations;

COMMIT;  

