-- Revert: schemas/dashboard_public/tables/rewards/columns/weekly_limit/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN weekly_limit;
COMMIT;  

