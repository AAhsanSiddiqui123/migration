-- Deploy: schemas/dashboard_public/tables/notifications/columns/notification_text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;

ALTER TABLE "dashboard_public".notifications ADD COLUMN notification_text text;
COMMIT;
