-- Deploy: schemas/dashboard_public/tables/group_locations/columns/location_id/alterations/alt0000001139 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_public/tables/group_locations/columns/location_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_locations 
    ALTER COLUMN location_id SET NOT NULL;
COMMIT;
