-- Deploy: schemas/dashboard_status_public/tables/app_achievements/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_achievements/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_achievements ADD COLUMN id uuid;
COMMIT;
