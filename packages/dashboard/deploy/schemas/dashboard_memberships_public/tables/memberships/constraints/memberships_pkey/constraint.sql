-- Deploy: schemas/dashboard_memberships_public/tables/memberships/constraints/memberships_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships
    ADD CONSTRAINT memberships_pkey PRIMARY KEY (id);
COMMIT;
