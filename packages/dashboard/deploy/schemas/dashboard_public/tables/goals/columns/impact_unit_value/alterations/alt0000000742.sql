-- Deploy: schemas/dashboard_public/tables/goals/columns/impact_unit_value/alterations/alt0000000742 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/columns/impact_unit_value/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".goals.impact_unit_value IS E'magnitude or number of the impact quantity';
COMMIT;
