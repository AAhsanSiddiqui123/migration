-- Revert: schemas/dashboard_public/tables/user_devices/alterations/alt0000001154 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

