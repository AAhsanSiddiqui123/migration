-- Deploy: schemas/dashboard_public/tables/group_goals/columns/per_interval/alterations/alt0000001147 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/columns/per_interval/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.per_interval IS E'impact is measured per this interval';
COMMIT;
