-- Deploy: schemas/dashboard_public/tables/goals/columns/impact_unit_value/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;

ALTER TABLE "dashboard_public".goals ADD COLUMN impact_unit_value numeric;
COMMIT;