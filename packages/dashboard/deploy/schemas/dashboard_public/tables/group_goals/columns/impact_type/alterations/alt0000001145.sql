-- Deploy: schemas/dashboard_public/tables/group_goals/columns/impact_type/alterations/alt0000001145 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/columns/impact_type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.impact_type IS E'if no impact_object_type exists, use this';
COMMIT;
