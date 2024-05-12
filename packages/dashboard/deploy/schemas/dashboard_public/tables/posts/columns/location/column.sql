-- Deploy: schemas/dashboard_public/tables/posts/columns/location/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts ADD COLUMN location geometry (Point, 4326);
COMMIT;
