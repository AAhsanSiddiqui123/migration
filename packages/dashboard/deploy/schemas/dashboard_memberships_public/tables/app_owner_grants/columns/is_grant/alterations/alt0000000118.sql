-- Deploy: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/is_grant/alterations/alt0000000118 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/table
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/is_grant/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_owner_grants 
    ALTER COLUMN is_grant SET NOT NULL;
COMMIT;
