-- Revert: schemas/dashboard_public/tables/notification_preferences/indexes/notification_preferences_user_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".notification_preferences_user_id_idx;
COMMIT;  

