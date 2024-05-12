-- Deploy: schemas/dashboard_public/tables/locations/columns/location_type/alterations/alt0000000626 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/location_type/column

BEGIN;

ALTER TABLE "dashboard_public".locations 
    ALTER COLUMN location_type SET NOT NULL;
COMMIT;
