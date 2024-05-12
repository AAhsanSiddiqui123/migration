-- Revert: schemas/dashboard_public/tables/notification_preferences/constraints/notification_preferences_user_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".notification_preferences 
    DROP CONSTRAINT notification_preferences_user_id_fkey;

COMMIT;  

