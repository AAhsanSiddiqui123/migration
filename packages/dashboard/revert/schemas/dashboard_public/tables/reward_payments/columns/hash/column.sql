-- Revert: schemas/dashboard_public/tables/reward_payments/columns/hash/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN hash;
COMMIT;  

