-- Revert: schemas/dashboard_public/tables/rewards/columns/total_limit/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN total_limit;
COMMIT;  

