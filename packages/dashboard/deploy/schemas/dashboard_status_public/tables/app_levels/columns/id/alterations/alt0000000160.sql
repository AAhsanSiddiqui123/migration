-- Deploy: schemas/dashboard_status_public/tables/app_levels/columns/id/alterations/alt0000000160 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table
-- requires: schemas/dashboard_status_public/tables/app_levels/columns/id/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
