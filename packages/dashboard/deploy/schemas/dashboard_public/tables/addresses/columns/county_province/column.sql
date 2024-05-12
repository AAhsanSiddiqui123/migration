-- Deploy: schemas/dashboard_public/tables/addresses/columns/county_province/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;

ALTER TABLE "dashboard_public".addresses ADD COLUMN county_province text;
COMMIT;
