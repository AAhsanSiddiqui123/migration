-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/free_time/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN free_time;
COMMIT;  

