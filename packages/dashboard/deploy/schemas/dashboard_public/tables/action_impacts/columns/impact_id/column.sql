-- Deploy: schemas/dashboard_public/tables/action_impacts/columns/impact_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;

ALTER TABLE "dashboard_public".action_impacts ADD COLUMN impact_id uuid;
COMMIT;
