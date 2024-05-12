-- Revert: schemas/dashboard_public/tables/user_locations/columns/ref_location_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN ref_location_id;
COMMIT;  

