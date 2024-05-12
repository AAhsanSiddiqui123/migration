-- Deploy: schemas/dashboard_public/tables/object_type_values/columns/location/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_values ADD COLUMN location geometry (Point, 4326);
COMMIT;
