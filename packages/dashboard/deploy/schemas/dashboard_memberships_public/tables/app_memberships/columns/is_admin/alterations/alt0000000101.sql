-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_admin/alterations/alt0000000101 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_admin/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_admin SET NOT NULL;
COMMIT;
