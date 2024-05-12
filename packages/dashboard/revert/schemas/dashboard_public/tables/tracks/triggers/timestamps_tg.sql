-- Revert: schemas/dashboard_public/tables/tracks/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN created_at;
ALTER TABLE "dashboard_public".tracks DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".tracks;

COMMIT;  

