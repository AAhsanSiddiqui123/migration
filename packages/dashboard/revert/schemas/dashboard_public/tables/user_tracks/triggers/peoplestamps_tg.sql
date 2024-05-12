-- Revert: schemas/dashboard_public/tables/user_tracks/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_tracks DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_tracks;


COMMIT;  

