-- Deploy: schemas/dashboard_public/tables/group_locations/constraints/group_locations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;

ALTER TABLE "dashboard_public".group_locations
    ADD CONSTRAINT group_locations_pkey PRIMARY KEY (id);
COMMIT;
