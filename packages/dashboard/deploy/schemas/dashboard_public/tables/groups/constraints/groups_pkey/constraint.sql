-- Deploy: schemas/dashboard_public/tables/groups/constraints/groups_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table

BEGIN;

ALTER TABLE "dashboard_public".groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
COMMIT;
