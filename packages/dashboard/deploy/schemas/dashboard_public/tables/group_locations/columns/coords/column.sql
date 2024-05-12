-- Deploy: schemas/dashboard_public/tables/group_locations/columns/coords/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;

ALTER TABLE "dashboard_public".group_locations ADD COLUMN coords geometry(point, 4326);
COMMIT;
