-- Verify: schemas/dashboard_public/tables/user_devices/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_devices');
COMMIT;  

