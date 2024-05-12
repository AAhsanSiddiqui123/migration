-- Verify: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.notification_preferences', 'insert', 'authenticated');
COMMIT;  

