-- Deploy: schemas/dashboard_invites_public/tables/group_invites/constraints/group_invites_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites
    ADD CONSTRAINT group_invites_pkey PRIMARY KEY (id);
COMMIT;
