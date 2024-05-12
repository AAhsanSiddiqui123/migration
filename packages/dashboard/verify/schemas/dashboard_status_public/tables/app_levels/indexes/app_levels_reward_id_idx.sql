-- Verify: schemas/dashboard_status_public/tables/app_levels/indexes/app_levels_reward_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_status_public.app_levels', 'app_levels_reward_id_idx');
COMMIT;  

