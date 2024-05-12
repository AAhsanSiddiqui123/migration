-- Deploy: schemas/dashboard_memberships_public/tables/owner_grants/columns/id/alterations/alt0000000253 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/table
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".owner_grants 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
