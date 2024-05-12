-- Deploy: schemas/dashboard_public/tables/group_goals/columns/per_value/alterations/alt0000001148 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/columns/per_value/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.per_value IS E'impact value measured for per_unit field';
COMMIT;
