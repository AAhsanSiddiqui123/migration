-- Deploy: schemas/dashboard_public/tables/action_items/columns/embed_code/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table

BEGIN;

ALTER TABLE "dashboard_public".action_items ADD COLUMN embed_code text;
COMMIT;
