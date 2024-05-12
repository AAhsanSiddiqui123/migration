-- Verify: schemas/dashboard_public/tables/notification_preferences/table on pg

BEGIN;
SELECT verify_table('dashboard_public.notification_preferences');
COMMIT;  

