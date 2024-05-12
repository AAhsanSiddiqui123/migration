-- Deploy: schemas/dashboard_public/tables/notification_preferences/columns/emails/alterations/alt0000001180 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table
-- requires: schemas/dashboard_public/tables/notification_preferences/columns/emails/column

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN emails SET DEFAULT false;
COMMIT;
