-- Revert: schemas/dashboard_public/tables/user_devices/columns/type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices DROP COLUMN type;
COMMIT;  

