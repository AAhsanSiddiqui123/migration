-- Deploy: schemas/dashboard_public/tables/objects/constraints/objects_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;

ALTER TABLE "dashboard_public".objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);
COMMIT;
