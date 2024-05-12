-- Verify: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.notification_preferences', 'delete', 'authenticated');
COMMIT;  

