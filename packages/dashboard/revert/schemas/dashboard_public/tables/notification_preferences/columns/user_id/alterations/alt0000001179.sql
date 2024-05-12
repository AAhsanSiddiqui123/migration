-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/user_id/alterations/alt0000001179 from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

