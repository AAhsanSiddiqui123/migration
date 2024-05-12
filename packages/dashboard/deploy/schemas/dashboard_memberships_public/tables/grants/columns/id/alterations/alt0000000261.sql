-- Deploy: schemas/dashboard_memberships_public/tables/grants/columns/id/alterations/alt0000000261 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table
-- requires: schemas/dashboard_memberships_public/tables/grants/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
