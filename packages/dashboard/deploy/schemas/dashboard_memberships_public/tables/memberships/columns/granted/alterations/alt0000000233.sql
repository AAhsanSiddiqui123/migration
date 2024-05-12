-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/granted/alterations/alt0000000233 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/granted/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN granted SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
