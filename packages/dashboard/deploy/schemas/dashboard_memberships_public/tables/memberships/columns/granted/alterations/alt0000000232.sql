-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/granted/alterations/alt0000000232 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/granted/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN granted SET NOT NULL;
COMMIT;
