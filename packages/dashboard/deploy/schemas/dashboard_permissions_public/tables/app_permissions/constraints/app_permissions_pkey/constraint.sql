-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/constraints/app_permissions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".app_permissions
    ADD CONSTRAINT app_permissions_pkey PRIMARY KEY (id);
COMMIT;
