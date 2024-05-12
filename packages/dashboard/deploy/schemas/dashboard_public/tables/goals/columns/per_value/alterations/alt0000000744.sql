-- Deploy: schemas/dashboard_public/tables/goals/columns/per_value/alterations/alt0000000744 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/columns/per_value/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".goals.per_value IS E'impact value measured for per_unit field';
COMMIT;
