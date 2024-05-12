-- Deploy: schemas/dashboard_public/tables/actions/columns/bounds/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN bounds geometry (GeometryCollection, 4326);
COMMIT;
