-- Deploy: schemas/dashboard_public/tables/actions/columns/limited_to_location/alterations/alt0000000775 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/limited_to_location/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN limited_to_location SET DEFAULT false;
COMMIT;
