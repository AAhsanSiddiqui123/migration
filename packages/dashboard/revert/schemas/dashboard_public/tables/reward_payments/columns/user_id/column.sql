-- Revert: schemas/dashboard_public/tables/reward_payments/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN user_id;
COMMIT;  

