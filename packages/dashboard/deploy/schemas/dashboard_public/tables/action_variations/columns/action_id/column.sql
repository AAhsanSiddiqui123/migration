-- Deploy: schemas/dashboard_public/tables/action_variations/columns/action_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_variations ADD COLUMN action_id uuid;
COMMIT;
