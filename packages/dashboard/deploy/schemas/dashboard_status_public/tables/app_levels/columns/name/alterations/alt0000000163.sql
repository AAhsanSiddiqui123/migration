-- Deploy: schemas/dashboard_status_public/tables/app_levels/columns/name/alterations/alt0000000163 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table
-- requires: schemas/dashboard_status_public/tables/app_levels/columns/name/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
