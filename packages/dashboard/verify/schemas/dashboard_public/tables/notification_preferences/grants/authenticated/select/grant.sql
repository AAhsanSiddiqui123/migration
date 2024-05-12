-- Verify: schemas/dashboard_public/tables/notification_preferences/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.notification_preferences', 'select', 'authenticated');
COMMIT;  

