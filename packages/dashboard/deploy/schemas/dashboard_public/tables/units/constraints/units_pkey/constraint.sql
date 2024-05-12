-- Deploy: schemas/dashboard_public/tables/units/constraints/units_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table

BEGIN;

ALTER TABLE "dashboard_public".units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
COMMIT;
