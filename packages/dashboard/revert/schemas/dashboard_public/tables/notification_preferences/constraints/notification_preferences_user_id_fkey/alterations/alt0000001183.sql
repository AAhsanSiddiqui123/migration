-- Revert: schemas/dashboard_public/tables/notification_preferences/constraints/notification_preferences_user_id_fkey/alterations/alt0000001183 from pg

BEGIN;
COMMENT ON CONSTRAINT notification_preferences_user_id_fkey ON "dashboard_public".notification_preferences IS NULL;
COMMIT;  

