-- Revert: schemas/dashboard_public/tables/reward_payments/columns/reward_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN reward_id;
COMMIT;  

