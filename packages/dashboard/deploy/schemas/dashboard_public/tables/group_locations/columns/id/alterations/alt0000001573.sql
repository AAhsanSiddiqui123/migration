-- Deploy: schemas/dashboard_public/tables/group_locations/columns/id/alterations/alt0000001573 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_public/tables/group_locations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".group_locations 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
