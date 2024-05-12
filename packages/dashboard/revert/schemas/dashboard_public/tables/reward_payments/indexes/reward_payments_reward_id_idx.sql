-- Revert: schemas/dashboard_public/tables/reward_payments/indexes/reward_payments_reward_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".reward_payments_reward_id_idx;
COMMIT;  

