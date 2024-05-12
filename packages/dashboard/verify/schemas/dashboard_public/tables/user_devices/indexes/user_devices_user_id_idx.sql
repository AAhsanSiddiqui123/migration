-- Verify: schemas/dashboard_public/tables/user_devices/indexes/user_devices_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_devices', 'user_devices_user_id_idx');
COMMIT;  

