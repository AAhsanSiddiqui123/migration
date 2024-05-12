-- Deploy: schemas/dashboard_public/tables/notification_preferences/columns/user_id/alterations/alt0000001179 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table
-- requires: schemas/dashboard_public/tables/notification_preferences/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN user_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
