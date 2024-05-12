-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/constraints/app_memberships_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships
    ADD CONSTRAINT app_memberships_pkey PRIMARY KEY (id);
COMMIT;
