-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/is_banned/alterations/alt0000000220 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/is_banned/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN is_banned SET NOT NULL;
COMMIT;
