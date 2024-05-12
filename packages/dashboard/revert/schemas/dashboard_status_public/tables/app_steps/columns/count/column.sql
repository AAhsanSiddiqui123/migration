-- Revert: schemas/dashboard_status_public/tables/app_steps/columns/count/column from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_steps DROP COLUMN count;
COMMIT;  

