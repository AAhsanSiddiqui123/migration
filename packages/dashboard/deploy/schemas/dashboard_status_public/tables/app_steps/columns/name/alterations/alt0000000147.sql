-- Deploy: schemas/dashboard_status_public/tables/app_steps/columns/name/alterations/alt0000000147 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_steps/table
-- requires: schemas/dashboard_status_public/tables/app_steps/columns/name/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_steps 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
