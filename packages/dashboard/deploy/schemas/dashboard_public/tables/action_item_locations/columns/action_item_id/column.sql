-- Deploy: schemas/dashboard_public/tables/action_item_locations/columns/action_item_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations ADD COLUMN action_item_id uuid;
COMMIT;
