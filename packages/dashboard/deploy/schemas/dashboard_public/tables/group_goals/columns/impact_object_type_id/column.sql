-- Deploy: schemas/dashboard_public/tables/group_goals/columns/impact_object_type_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;

ALTER TABLE "dashboard_public".group_goals ADD COLUMN impact_object_type_id uuid;
COMMIT;
