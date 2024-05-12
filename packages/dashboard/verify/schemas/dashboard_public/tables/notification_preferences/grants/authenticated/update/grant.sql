-- Verify: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.notification_preferences', 'update', 'authenticated');
COMMIT;  

