-- Revert: schemas/dashboard_public/tables/notification_preferences/columns/id/alterations/alt0000001176 from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

