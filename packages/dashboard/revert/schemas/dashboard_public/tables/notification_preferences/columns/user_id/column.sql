-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences DROP COLUMN user_id;
COMMIT;  

