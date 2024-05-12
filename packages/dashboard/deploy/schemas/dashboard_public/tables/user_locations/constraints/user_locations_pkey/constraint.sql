-- Deploy: schemas/dashboard_public/tables/user_locations/constraints/user_locations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;

ALTER TABLE "dashboard_public".user_locations
    ADD CONSTRAINT user_locations_pkey PRIMARY KEY (id);
COMMIT;
