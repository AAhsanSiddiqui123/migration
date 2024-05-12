-- Revert: schemas/dashboard_public/tables/reward_payments/columns/is_finalized/alterations/alt0000001250 from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments 
    ALTER COLUMN is_finalized DROP DEFAULT;

COMMIT;  

