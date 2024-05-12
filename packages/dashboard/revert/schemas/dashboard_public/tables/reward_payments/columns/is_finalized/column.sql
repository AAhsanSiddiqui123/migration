-- Revert: schemas/dashboard_public/tables/reward_payments/columns/is_finalized/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN is_finalized;
COMMIT;  

