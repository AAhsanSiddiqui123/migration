-- Deploy: schemas/dashboard_public/tables/group_locations/columns/owner_id/alterations/alt0000001141 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_public/tables/group_locations/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_locations 
    ALTER COLUMN owner_id SET DEFAULT uuid_nil();
COMMIT;
