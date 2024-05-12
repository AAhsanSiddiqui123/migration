-- Verify: schemas/dashboard_public/tables/notifications/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.notifications', 'update', 'authenticated');
COMMIT;  

