-- Revert: schemas/dashboard_public/tables/user_devices/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_devices;
COMMIT;  

