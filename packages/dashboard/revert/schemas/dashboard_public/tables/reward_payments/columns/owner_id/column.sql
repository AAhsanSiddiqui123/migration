-- Revert: schemas/dashboard_public/tables/reward_payments/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN owner_id;
COMMIT;  

