-- Deploy: schemas/dashboard_public/tables/group_goals/columns/impact_unit_value/alterations/alt0000001146 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/columns/impact_unit_value/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.impact_unit_value IS E'magnitude or number of the impact quantity';
COMMIT;
