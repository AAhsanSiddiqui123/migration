-- Deploy: schemas/dashboard_public/tables/action_impacts/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;

ALTER TABLE "dashboard_public".action_impacts ADD COLUMN id uuid;
COMMIT;
