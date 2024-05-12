-- Revert: schemas/dashboard_public/tables/user_tracks/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks DROP COLUMN owner_id;
COMMIT;  

