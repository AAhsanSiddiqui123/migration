-- Deploy: schemas/dashboard_public/tables/user_locations/columns/name/column/alterations/alt0000001540 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;

ALTER TABLE "dashboard_public".user_locations ADD COLUMN name text;
COMMIT;
