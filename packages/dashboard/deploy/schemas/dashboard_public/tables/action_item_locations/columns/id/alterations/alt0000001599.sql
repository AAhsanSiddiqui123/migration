-- Deploy: schemas/dashboard_public/tables/action_item_locations/columns/id/alterations/alt0000001599 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table
-- requires: schemas/dashboard_public/tables/action_item_locations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
