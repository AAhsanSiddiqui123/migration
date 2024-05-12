-- Revert: schemas/dashboard_public/tables/rewards/columns/reward_unit/column from pg

BEGIN;


ALTER TABLE "dashboard_public".rewards DROP COLUMN reward_unit;
COMMIT;  

