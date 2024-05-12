-- Deploy: schemas/dashboard_public/tables/notification_preferences/columns/id/alterations/alt0000001176 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table
-- requires: schemas/dashboard_public/tables/notification_preferences/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
