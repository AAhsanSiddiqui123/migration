-- Revert: schemas/dashboard_public/tables/reward_payments/constraints/reward_payments_action_id_fkey/alterations/alt0000001251 from pg

BEGIN;
COMMENT ON CONSTRAINT reward_payments_action_id_fkey ON "dashboard_public".reward_payments IS NULL;
COMMIT;  

