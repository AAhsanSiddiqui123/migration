-- Deploy: schemas/dashboard_public/tables/action_locations/columns/id/alterations/alt0000000834 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table
-- requires: schemas/dashboard_public/tables/action_locations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".action_locations 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
