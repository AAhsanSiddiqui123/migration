-- Deploy: schemas/dashboard_public/tables/groups/columns/id/alterations/alt0000000272 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_public/tables/groups/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".groups 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
