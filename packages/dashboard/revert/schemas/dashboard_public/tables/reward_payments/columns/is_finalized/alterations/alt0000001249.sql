-- Revert: schemas/dashboard_public/tables/reward_payments/columns/is_finalized/alterations/alt0000001249 from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments 
    ALTER COLUMN is_finalized DROP NOT NULL;


COMMIT;  

