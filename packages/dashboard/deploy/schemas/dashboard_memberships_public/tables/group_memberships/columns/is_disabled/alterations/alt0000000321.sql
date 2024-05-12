-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_disabled/alterations/alt0000000321 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_disabled/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN is_disabled SET NOT NULL;
COMMIT;
