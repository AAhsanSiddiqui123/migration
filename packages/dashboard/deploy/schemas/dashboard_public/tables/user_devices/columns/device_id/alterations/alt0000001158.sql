-- Deploy: schemas/dashboard_public/tables/user_devices/columns/device_id/alterations/alt0000001158 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/user_devices/columns/device_id/column

BEGIN;
ALTER TABLE "dashboard_public".user_devices ADD CONSTRAINT user_devices_device_id_chk CHECK (character_length(device_id) <= 1048);
COMMIT;
