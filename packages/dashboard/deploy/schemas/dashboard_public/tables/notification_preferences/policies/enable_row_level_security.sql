-- Deploy: schemas/dashboard_public/tables/notification_preferences/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences
    ENABLE ROW LEVEL SECURITY;
COMMIT;
