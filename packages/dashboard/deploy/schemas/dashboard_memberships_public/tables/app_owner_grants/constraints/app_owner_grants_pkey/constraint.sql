-- Deploy: schemas/dashboard_memberships_public/tables/app_owner_grants/constraints/app_owner_grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_owner_grants
    ADD CONSTRAINT app_owner_grants_pkey PRIMARY KEY (id);
COMMIT;
