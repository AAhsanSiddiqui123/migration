-- Deploy: schemas/dashboard_public/tables/group_locations/columns/id/column/alterations/alt0000001571 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;

ALTER TABLE "dashboard_public".group_locations ADD COLUMN id uuid;
COMMIT;
