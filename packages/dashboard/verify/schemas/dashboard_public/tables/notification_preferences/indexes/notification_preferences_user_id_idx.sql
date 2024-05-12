-- Verify: schemas/dashboard_public/tables/notification_preferences/indexes/notification_preferences_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.notification_preferences', 'notification_preferences_user_id_idx');
COMMIT;  

