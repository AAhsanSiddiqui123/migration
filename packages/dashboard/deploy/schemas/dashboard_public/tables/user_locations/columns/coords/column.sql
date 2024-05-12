-- Deploy: schemas/dashboard_public/tables/user_locations/columns/coords/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;

ALTER TABLE "dashboard_public".user_locations ADD COLUMN coords geometry (Point, 4326);
COMMIT;
