-- Verify: schemas/dashboard_public/tables/user_devices/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_devices', 'insert', 'authenticated');
COMMIT;  

