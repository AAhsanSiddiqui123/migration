-- Revert: schemas/dashboard_public/tables/reward_payments/columns/ref_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN ref_type;
COMMIT;  

