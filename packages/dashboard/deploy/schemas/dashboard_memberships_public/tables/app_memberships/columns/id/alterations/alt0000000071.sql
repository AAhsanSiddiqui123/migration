-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/columns/id/alterations/alt0000000071 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
