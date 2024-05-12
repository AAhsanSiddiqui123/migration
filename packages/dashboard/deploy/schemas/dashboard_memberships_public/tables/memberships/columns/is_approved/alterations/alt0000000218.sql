-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/is_approved/alterations/alt0000000218 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/is_approved/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN is_approved SET NOT NULL;
COMMIT;
