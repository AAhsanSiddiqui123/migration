-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/columns/granted/alterations/alt0000000105 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/columns/granted/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN granted SET NOT NULL;
COMMIT;
