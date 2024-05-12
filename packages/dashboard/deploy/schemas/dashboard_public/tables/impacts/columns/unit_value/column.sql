-- Deploy: schemas/dashboard_public/tables/impacts/columns/unit_value/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts ADD COLUMN unit_value numeric;
COMMIT;
