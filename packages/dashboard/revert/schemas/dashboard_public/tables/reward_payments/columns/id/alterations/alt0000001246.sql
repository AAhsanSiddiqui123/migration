-- Revert: schemas/dashboard_public/tables/reward_payments/columns/id/alterations/alt0000001246 from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

