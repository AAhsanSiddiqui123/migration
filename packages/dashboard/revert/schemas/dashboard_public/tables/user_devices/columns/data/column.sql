-- Revert: schemas/dashboard_public/tables/user_devices/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices DROP COLUMN data;
COMMIT;  

