-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000000091 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_banned/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_banned SET NOT NULL;
COMMIT;
