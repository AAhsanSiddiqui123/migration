-- Revert: schemas/dashboard_public/tables/user_devices/constraints/user_devices_user_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices 
    DROP CONSTRAINT user_devices_user_id_fkey;

COMMIT;  

