-- Deploy: schemas/dashboard_memberships_public/tables/app_grants/columns/permissions/alterations/alt0000000125 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_grants/table
-- requires: schemas/dashboard_memberships_public/tables/app_grants/columns/permissions/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_grants 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
