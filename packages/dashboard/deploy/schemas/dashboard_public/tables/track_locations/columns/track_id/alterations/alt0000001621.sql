-- Deploy: schemas/dashboard_public/tables/track_locations/columns/track_id/alterations/alt0000001621 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/track_locations/columns/track_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_locations 
    ALTER COLUMN track_id SET NOT NULL;
COMMIT;
