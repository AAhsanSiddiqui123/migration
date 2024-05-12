-- Deploy: schemas/dashboard_status_public/tables/app_steps/columns/id/alterations/alt0000000143 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_steps/table
-- requires: schemas/dashboard_status_public/tables/app_steps/columns/id/column

BEGIN;

ALTER TABLE "dashboard_status_public".app_steps 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
