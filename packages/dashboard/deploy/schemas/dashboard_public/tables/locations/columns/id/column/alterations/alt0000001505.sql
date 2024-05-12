-- Deploy: schemas/dashboard_public/tables/locations/columns/id/column/alterations/alt0000001505 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;

ALTER TABLE "dashboard_public".locations ADD COLUMN id uuid;
COMMIT;
