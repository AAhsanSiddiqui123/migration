-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/columns/name/alterations/alt0000000168 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/columns/name/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_level_requirements 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
