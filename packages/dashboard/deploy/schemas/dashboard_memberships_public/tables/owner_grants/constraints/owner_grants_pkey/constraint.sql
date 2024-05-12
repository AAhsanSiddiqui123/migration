-- Deploy: schemas/dashboard_memberships_public/tables/owner_grants/constraints/owner_grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".owner_grants
    ADD CONSTRAINT owner_grants_pkey PRIMARY KEY (id);
COMMIT;
