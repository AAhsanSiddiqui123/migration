-- Deploy: schemas/dashboard_public/tables/track_locations/columns/id/alterations/alt0000001619 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/track_locations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".track_locations 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
