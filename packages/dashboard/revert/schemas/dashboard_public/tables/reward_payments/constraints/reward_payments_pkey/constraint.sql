-- Revert: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments 
    DROP CONSTRAINT reward_payments_pkey;

COMMIT;  

