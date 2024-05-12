-- Deploy: schemas/dashboard_public/tables/action_item_types/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_types ADD COLUMN id uuid;
COMMIT;
