-- Deploy: schemas/dashboard_memberships_public/tables/grants/columns/permissions/alterations/alt0000000262 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table
-- requires: schemas/dashboard_memberships_public/tables/grants/columns/permissions/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
