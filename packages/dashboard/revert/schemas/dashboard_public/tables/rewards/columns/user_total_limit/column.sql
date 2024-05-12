-- Revert: schemas/dashboard_public/tables/rewards/columns/user_total_limit/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN user_total_limit;
COMMIT;  

