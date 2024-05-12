-- Verify: schemas/dashboard_public/tables/notifications/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.notifications', 'select', 'authenticated');
COMMIT;  

