-- Deploy: schemas/dashboard_public/tables/forms/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;

ALTER TABLE "dashboard_public".forms ADD COLUMN name text;
COMMIT;
