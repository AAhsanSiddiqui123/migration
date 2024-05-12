-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/emails/alterations/alt0000001180 from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN emails DROP DEFAULT;

COMMIT;  

