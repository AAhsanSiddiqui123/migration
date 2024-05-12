-- Deploy: schemas/dashboard_public/tables/actions/columns/limited_to_location/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN limited_to_location bool;
COMMIT;
