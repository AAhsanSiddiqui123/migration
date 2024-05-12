-- Verify: schemas/dashboard_public/tables/notifications/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.notifications', 'delete', 'authenticated');
COMMIT;  

