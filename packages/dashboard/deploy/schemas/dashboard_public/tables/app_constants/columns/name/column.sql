-- Deploy: schemas/dashboard_public/tables/app_constants/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;

ALTER TABLE "dashboard_public".app_constants ADD COLUMN name citext;
COMMIT;
