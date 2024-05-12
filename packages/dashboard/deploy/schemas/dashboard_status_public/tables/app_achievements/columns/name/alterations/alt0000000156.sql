-- Deploy: schemas/dashboard_status_public/tables/app_achievements/columns/name/alterations/alt0000000156 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_achievements/table
-- requires: schemas/dashboard_status_public/tables/app_achievements/columns/name/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_achievements 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
