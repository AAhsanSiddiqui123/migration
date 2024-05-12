-- Deploy: schemas/dashboard_public/tables/track_locations/columns/owner_id/alterations/alt0000001624 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/track_locations/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_locations 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
