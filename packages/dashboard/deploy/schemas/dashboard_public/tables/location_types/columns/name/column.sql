-- Deploy: schemas/dashboard_public/tables/location_types/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;

ALTER TABLE "dashboard_public".location_types ADD COLUMN name text;
COMMIT;
