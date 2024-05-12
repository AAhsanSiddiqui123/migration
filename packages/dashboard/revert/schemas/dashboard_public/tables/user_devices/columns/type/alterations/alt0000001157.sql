-- Revert: schemas/dashboard_public/tables/user_devices/columns/type/alterations/alt0000001157 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN type DROP NOT NULL;


COMMIT;  

