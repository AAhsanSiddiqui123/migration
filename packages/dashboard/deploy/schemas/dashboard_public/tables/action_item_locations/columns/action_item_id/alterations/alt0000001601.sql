-- Deploy: schemas/dashboard_public/tables/action_item_locations/columns/action_item_id/alterations/alt0000001601 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table
-- requires: schemas/dashboard_public/tables/action_item_locations/columns/action_item_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations 
    ALTER COLUMN action_item_id SET NOT NULL;
COMMIT;
