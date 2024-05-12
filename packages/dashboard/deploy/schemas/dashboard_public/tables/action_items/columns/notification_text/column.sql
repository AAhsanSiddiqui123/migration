-- Deploy: schemas/dashboard_public/tables/action_items/columns/notification_text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table

BEGIN;

ALTER TABLE "dashboard_public".action_items ADD COLUMN notification_text text;
COMMIT;
