-- Verify: schemas/dashboard_public/tables/notifications/table on pg

BEGIN;
SELECT verify_table('dashboard_public.notifications');
COMMIT;  

