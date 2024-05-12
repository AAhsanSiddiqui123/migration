-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/permissions/alterations/alt0000000230 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/permissions/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
