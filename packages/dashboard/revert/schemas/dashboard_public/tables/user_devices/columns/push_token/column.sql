-- Revert: schemas/dashboard_public/tables/user_devices/columns/push_token/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_devices DROP COLUMN push_token;
COMMIT;  

