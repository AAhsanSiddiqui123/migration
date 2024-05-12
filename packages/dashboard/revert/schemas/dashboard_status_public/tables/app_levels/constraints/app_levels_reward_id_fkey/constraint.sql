-- Revert: schemas/dashboard_status_public/tables/app_levels/constraints/app_levels_reward_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_levels 
    DROP CONSTRAINT app_levels_reward_id_fkey;

COMMIT;  

