-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/is_admin/alterations/alt0000000228 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/is_admin/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN is_admin SET NOT NULL;
COMMIT;
