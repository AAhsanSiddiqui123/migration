-- Deploy: schemas/dashboard_public/tables/track_locations/constraints/track_locations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table

BEGIN;

ALTER TABLE "dashboard_public".track_locations
    ADD CONSTRAINT track_locations_pkey PRIMARY KEY (id);
COMMIT;
