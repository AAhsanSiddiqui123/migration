-- Deploy: schemas/dashboard_public/tables/locations/columns/name/column/alterations/alt0000001509 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;

ALTER TABLE "dashboard_public".locations ADD COLUMN name text;
COMMIT;
