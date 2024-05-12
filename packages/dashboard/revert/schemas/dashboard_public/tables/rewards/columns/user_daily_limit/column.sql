-- Revert: schemas/dashboard_public/tables/rewards/columns/user_daily_limit/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN user_daily_limit;
COMMIT;  

