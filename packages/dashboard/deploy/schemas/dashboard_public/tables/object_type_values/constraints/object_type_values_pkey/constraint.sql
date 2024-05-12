-- Deploy: schemas/dashboard_public/tables/object_type_values/constraints/object_type_values_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_values
    ADD CONSTRAINT object_type_values_pkey PRIMARY KEY (id);
COMMIT;
