-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/columns/notification_text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_language_variations ADD COLUMN notification_text text;
COMMIT;
