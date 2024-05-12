-- Revert: schemas/dashboard_public/tables/rewards/columns/reward_amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN reward_amount;
COMMIT;  

