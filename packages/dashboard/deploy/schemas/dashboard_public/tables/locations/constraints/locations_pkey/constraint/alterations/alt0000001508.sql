-- Deploy: schemas/dashboard_public/tables/locations/constraints/locations_pkey/constraint/alterations/alt0000001508 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;

ALTER TABLE "dashboard_public".locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
COMMIT;
