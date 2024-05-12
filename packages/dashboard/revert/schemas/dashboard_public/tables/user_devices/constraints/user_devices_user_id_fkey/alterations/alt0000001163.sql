-- Revert: schemas/dashboard_public/tables/user_devices/constraints/user_devices_user_id_fkey/alterations/alt0000001163 from pg

BEGIN;
COMMENT ON CONSTRAINT user_devices_user_id_fkey ON "dashboard_public".user_devices IS NULL;
COMMIT;  

