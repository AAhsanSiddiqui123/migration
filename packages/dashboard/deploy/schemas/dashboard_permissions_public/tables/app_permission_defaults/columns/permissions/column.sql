-- Deploy: schemas/dashboard_permissions_public/tables/app_permission_defaults/columns/permissions/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permission_defaults/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".app_permission_defaults ADD COLUMN permissions bit(32);
COMMIT;
