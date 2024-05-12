-- Deploy: schemas/dashboard_public/tables/locations/columns/type_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;

ALTER TABLE "dashboard_public".locations ADD COLUMN type_id uuid;
COMMIT;
