-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/id/alterations/alt0000000197 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
