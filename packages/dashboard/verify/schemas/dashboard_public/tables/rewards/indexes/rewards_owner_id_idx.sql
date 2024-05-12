-- Verify: schemas/dashboard_public/tables/rewards/indexes/rewards_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.rewards', 'rewards_owner_id_idx');
COMMIT;  

