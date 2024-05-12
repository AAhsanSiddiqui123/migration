-- Revert: schemas/dashboard_public/tables/user_devices/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices DROP COLUMN user_id;
COMMIT;  

