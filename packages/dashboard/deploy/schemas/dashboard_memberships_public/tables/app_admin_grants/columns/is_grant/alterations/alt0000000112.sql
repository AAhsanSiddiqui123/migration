-- Deploy: schemas/dashboard_memberships_public/tables/app_admin_grants/columns/is_grant/alterations/alt0000000112 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_admin_grants/table
-- requires: schemas/dashboard_memberships_public/tables/app_admin_grants/columns/is_grant/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_admin_grants 
    ALTER COLUMN is_grant SET DEFAULT true;
COMMIT;
