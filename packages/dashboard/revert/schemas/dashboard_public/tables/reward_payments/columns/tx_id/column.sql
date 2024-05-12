-- Revert: schemas/dashboard_public/tables/reward_payments/columns/tx_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN tx_id;
COMMIT;  

