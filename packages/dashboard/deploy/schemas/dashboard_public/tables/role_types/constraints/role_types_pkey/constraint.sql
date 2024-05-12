-- Deploy: schemas/dashboard_public/tables/role_types/constraints/role_types_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/role_types/table

BEGIN;

ALTER TABLE "dashboard_public".role_types
    ADD CONSTRAINT role_types_pkey PRIMARY KEY (id);
COMMIT;
