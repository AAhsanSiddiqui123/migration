-- Revert: schemas/dashboard_public/tables/user_tracks/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks DROP COLUMN id;
COMMIT;  

