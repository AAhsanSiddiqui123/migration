-- Revert: schemas/dashboard_public/tables/user_devices/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices DROP COLUMN id;
COMMIT;  

