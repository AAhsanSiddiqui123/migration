-- Revert: schemas/dashboard_public/tables/notification_preferences/constraints/notification_preferences_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    DROP CONSTRAINT notification_preferences_pkey;

COMMIT;  

