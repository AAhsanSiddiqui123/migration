-- Revert: schemas/dashboard_public/tables/reward_payments/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN action_id;
COMMIT;  

