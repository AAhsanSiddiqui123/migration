-- Revert: schemas/dashboard_public/tables/user_tracks/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks DROP COLUMN user_id;
COMMIT;  

