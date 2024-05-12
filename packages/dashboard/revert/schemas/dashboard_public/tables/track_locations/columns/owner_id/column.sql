-- Revert: schemas/dashboard_public/tables/track_locations/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations DROP COLUMN owner_id;
COMMIT;  

