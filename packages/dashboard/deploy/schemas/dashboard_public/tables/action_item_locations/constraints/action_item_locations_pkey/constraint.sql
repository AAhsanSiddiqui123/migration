-- Deploy: schemas/dashboard_public/tables/action_item_locations/constraints/action_item_locations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations
    ADD CONSTRAINT action_item_locations_pkey PRIMARY KEY (id);
COMMIT;
