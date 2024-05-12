-- Deploy: schemas/dashboard_public/tables/object_types/constraints/object_types_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table

BEGIN;

ALTER TABLE "dashboard_public".object_types
    ADD CONSTRAINT object_types_pkey PRIMARY KEY (id);
COMMIT;
