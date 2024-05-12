-- Deploy: schemas/dashboard_public/tables/group_goals/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;

ALTER TABLE "dashboard_public".group_goals ADD COLUMN id uuid;
COMMIT;
