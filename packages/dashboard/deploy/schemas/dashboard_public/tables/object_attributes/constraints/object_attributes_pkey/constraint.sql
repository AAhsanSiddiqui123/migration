-- Deploy: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_attributes
    ADD CONSTRAINT object_attributes_pkey PRIMARY KEY (id);
COMMIT;
