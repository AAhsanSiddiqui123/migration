-- Revert: schemas/dashboard_public/tables/user_tracks/columns/track_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks DROP COLUMN track_id;
COMMIT;  

