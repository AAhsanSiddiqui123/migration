-- Deploy: schemas/dashboard_memberships_public/tables/app_admin_grants/constraints/app_admin_grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_admin_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_admin_grants
    ADD CONSTRAINT app_admin_grants_pkey PRIMARY KEY (id);
COMMIT;
