-- Revert: schemas/dashboard_status_public/tables/app_levels/indexes/app_levels_reward_id_idx from pg

BEGIN;
DROP INDEX "dashboard_status_public".app_levels_reward_id_idx;
COMMIT;  

