-- Deploy: schemas/dashboard_memberships_public/tables/members/columns/id/alterations/alt0000000238 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table
-- requires: schemas/dashboard_memberships_public/tables/members/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".members 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
