-- Deploy: schemas/dashboard_public/tables/action_language_variations/columns/enable_notifications_text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_language_variations ADD COLUMN enable_notifications_text text;
COMMIT;
