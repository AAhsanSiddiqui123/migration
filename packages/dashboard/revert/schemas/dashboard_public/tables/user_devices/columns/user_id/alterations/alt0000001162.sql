-- Revert: schemas/dashboard_public/tables/user_devices/columns/user_id/alterations/alt0000001162 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

