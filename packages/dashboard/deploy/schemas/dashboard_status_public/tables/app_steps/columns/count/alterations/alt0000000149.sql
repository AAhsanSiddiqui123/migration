-- Deploy: schemas/dashboard_status_public/tables/app_steps/columns/count/alterations/alt0000000149 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_steps/table
-- requires: schemas/dashboard_status_public/tables/app_steps/columns/count/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_steps 
    ALTER COLUMN count SET DEFAULT 1;
COMMIT;
