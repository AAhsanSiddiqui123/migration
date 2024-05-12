-- Deploy: schemas/dashboard_public/tables/notification_preferences/alterations/alt0000001175 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences
    DISABLE ROW LEVEL SECURITY;
COMMIT;
