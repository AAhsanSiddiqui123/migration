-- Deploy: schemas/dashboard_public/tables/quantities/constraints/quantities_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;

ALTER TABLE "dashboard_public".quantities
    ADD CONSTRAINT quantities_pkey PRIMARY KEY (id);
COMMIT;
