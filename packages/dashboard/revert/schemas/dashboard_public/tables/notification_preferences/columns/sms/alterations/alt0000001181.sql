-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/sms/alterations/alt0000001181 from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN sms DROP DEFAULT;

COMMIT;  

