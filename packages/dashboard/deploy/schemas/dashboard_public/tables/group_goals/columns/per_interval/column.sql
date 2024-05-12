-- Deploy: schemas/dashboard_public/tables/group_goals/columns/per_interval/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;

ALTER TABLE "dashboard_public".group_goals ADD COLUMN per_interval interval;
COMMIT;
