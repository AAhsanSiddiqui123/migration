-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/notifications/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences DROP COLUMN notifications;
COMMIT;  

