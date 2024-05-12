-- Revert: schemas/dashboard_public/tables/user_devices/columns/device_id/alterations/alt0000001158 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_devices DROP CONSTRAINT user_devices_device_id_chk;
COMMIT;  

