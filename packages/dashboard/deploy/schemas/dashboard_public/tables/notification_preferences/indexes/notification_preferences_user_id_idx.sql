-- Deploy: schemas/dashboard_public/tables/notification_preferences/indexes/notification_preferences_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table
-- requires: schemas/dashboard_public/tables/notification_preferences/columns/user_id/column

BEGIN;
CREATE INDEX notification_preferences_user_id_idx ON "dashboard_public".notification_preferences (user_id);
COMMIT;
