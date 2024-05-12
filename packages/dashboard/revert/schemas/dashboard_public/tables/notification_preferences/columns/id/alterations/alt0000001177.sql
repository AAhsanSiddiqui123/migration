-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/id/alterations/alt0000001177 from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

