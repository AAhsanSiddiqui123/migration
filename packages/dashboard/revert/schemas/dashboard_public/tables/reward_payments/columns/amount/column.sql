-- Revert: schemas/dashboard_public/tables/reward_payments/columns/amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN amount;
COMMIT;  

