-- Deploy: schemas/dashboard_public/tables/action_locations/constraints/action_locations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_locations
    ADD CONSTRAINT action_locations_pkey PRIMARY KEY (id);
COMMIT;
