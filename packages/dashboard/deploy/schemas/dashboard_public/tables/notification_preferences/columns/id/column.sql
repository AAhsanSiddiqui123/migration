-- Deploy: schemas/dashboard_public/tables/notification_preferences/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences ADD COLUMN id uuid;
COMMIT;
