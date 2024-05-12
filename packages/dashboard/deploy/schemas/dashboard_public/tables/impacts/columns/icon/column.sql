-- Deploy: schemas/dashboard_public/tables/impacts/columns/icon/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts ADD COLUMN icon image;
COMMIT;
