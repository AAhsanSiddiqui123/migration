-- Deploy: schemas/dashboard_public/tables/object_type_attributes/constraints/object_type_attributes_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes
    ADD CONSTRAINT object_type_attributes_pkey PRIMARY KEY (id);
COMMIT;
