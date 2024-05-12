-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000000172 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/columns/priority/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_level_requirements 
    ALTER COLUMN priority SET NOT NULL;
COMMIT;
