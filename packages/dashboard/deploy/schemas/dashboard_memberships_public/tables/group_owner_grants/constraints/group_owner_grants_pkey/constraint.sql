-- Deploy: schemas/dashboard_memberships_public/tables/group_owner_grants/constraints/group_owner_grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_owner_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_owner_grants
    ADD CONSTRAINT group_owner_grants_pkey PRIMARY KEY (id);
COMMIT;
