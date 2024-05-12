-- Revert: schemas/dashboard_public/tables/user_locations/columns/ref_location_id/alterations/alt0000001616 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations
    ADD COLUMN ref_location_id uuid;

COMMIT;  

