-- Deploy: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".notification_preferences TO authenticated;
COMMIT;
