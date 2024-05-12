-- Deploy: schemas/dashboard_limits_public/tables/app_limit_defaults/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limit_defaults/table

BEGIN;

ALTER TABLE "dashboard_limits_public".app_limit_defaults ADD COLUMN id uuid;
COMMIT;
