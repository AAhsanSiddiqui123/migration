-- Deploy: schemas/dashboard_status_public/tables/app_levels/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels ADD COLUMN owner_id uuid;
COMMIT;
