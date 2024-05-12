-- Deploy: schemas/dashboard_public/tables/notification_preferences/columns/sms/alterations/alt0000001181 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table
-- requires: schemas/dashboard_public/tables/notification_preferences/columns/sms/column

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN sms SET DEFAULT false;
COMMIT;
