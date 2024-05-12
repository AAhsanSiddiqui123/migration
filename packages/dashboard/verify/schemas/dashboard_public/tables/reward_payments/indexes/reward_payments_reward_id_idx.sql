-- Verify: schemas/dashboard_public/tables/reward_payments/indexes/reward_payments_reward_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.reward_payments', 'reward_payments_reward_id_idx');
COMMIT;  

