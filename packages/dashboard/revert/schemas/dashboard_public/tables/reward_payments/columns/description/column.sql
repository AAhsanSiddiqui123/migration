-- Revert: schemas/dashboard_public/tables/reward_payments/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments DROP COLUMN description;
COMMIT;  

