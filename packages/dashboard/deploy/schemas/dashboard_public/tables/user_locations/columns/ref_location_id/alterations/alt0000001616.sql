-- Deploy: schemas/dashboard_public/tables/user_locations/columns/ref_location_id/alterations/alt0000001616 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_locations/columns/ref_location_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_locations 
    DROP COLUMN ref_location_id;
COMMIT;
