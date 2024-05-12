-- Deploy: schemas/dashboard_public/tables/action_item_locations/constraints/action_item_locations_action_item_id_fkey/alterations/alt0000001602 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/constraints/action_item_locations_action_item_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_item_locations_action_item_id_fkey ON "dashboard_public".action_item_locations IS E'@omit manyToMany';
COMMIT;
