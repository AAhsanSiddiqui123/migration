-- Deploy: schemas/dashboard_public/tables/units/columns/value/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table

BEGIN;

ALTER TABLE "dashboard_public".units ADD COLUMN value text;
COMMIT;
