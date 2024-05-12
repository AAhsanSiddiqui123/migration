-- Deploy: schemas/dashboard_memberships_public/tables/members/constraints/members_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);
COMMIT;
