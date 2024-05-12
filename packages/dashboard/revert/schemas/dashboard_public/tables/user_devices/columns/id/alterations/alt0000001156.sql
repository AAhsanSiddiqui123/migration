-- Revert: schemas/dashboard_public/tables/user_devices/columns/id/alterations/alt0000001156 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

