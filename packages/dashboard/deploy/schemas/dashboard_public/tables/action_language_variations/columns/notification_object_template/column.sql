-- Deploy: schemas/dashboard_public/tables/action_language_variations/columns/notification_object_template/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_language_variations ADD COLUMN notification_object_template text;
COMMIT;
