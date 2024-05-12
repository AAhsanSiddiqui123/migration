-- Deploy: schemas/dashboard_permissions_public/tables/membership_permission_defaults/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permission_defaults/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".membership_permission_defaults ADD COLUMN id uuid;
COMMIT;
