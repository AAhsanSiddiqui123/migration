-- Deploy: schemas/dashboard_public/tables/notification_preferences/columns/notifications/alterations/alt0000001182 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table
-- requires: schemas/dashboard_public/tables/notification_preferences/columns/notifications/column

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN notifications SET DEFAULT false;
COMMIT;
