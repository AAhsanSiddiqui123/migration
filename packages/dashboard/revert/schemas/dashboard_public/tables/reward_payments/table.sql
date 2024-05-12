-- Revert: schemas/dashboard_public/tables/reward_payments/table from pg

BEGIN;
DROP TABLE "dashboard_public".reward_payments;
COMMIT;  

