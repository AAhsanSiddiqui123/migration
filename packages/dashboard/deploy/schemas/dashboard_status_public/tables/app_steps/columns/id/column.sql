-- Deploy: schemas/dashboard_status_public/tables/app_steps/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_steps/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_steps ADD COLUMN id uuid;
COMMIT;
