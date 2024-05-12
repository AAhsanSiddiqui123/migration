-- Deploy: schemas/dashboard_public/tables/action_item_locations/columns/location_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations ADD COLUMN location_id uuid;
COMMIT;
