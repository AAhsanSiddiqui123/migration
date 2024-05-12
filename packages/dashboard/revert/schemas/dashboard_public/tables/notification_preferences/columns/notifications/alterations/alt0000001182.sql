-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/notifications/alterations/alt0000001182 from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN notifications DROP DEFAULT;

COMMIT;  

