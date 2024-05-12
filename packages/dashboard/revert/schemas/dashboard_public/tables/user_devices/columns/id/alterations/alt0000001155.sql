-- Revert: schemas/dashboard_public/tables/user_devices/columns/id/alterations/alt0000001155 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

