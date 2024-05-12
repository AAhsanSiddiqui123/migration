-- Deploy: schemas/dashboard_public/tables/locations/columns/id/alterations/alt0000000622 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".locations 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
