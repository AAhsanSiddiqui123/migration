-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/columns/permissions/alterations/alt0000000329 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/columns/permissions/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
