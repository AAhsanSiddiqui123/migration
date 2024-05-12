-- Deploy: schemas/dashboard_memberships_public/tables/grants/constraints/grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants
    ADD CONSTRAINT grants_pkey PRIMARY KEY (id);
COMMIT;
