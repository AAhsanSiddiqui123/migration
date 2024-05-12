-- Revert: schemas/dashboard_public/tables/rewards/columns/daily_limit/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN daily_limit;
COMMIT;  

