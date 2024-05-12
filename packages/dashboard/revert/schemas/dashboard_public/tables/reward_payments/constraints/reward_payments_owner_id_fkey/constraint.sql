-- Revert: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".reward_payments 
    DROP CONSTRAINT reward_payments_owner_id_fkey;

COMMIT;  

