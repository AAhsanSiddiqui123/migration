-- Revert: schemas/dashboard_public/tables/user_tracks/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks DROP COLUMN created_at;
ALTER TABLE "dashboard_public".user_tracks DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".user_tracks;

COMMIT;  

