-- Deploy: schemas/dashboard_memberships_public/tables/grants/columns/is_grant/alterations/alt0000000265 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table
-- requires: schemas/dashboard_memberships_public/tables/grants/columns/is_grant/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN is_grant SET DEFAULT true;
COMMIT;
