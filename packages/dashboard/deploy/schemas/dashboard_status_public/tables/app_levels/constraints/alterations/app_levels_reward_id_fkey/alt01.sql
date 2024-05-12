-- Deploy dashboard:schemas/dashboard_status_public/tables/app_levels/constraints/alterations/app_levels_reward_id_fkey/alt01 to pg

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels 
    DROP CONSTRAINT app_levels_reward_id_fkey;

ALTER TABLE "dashboard_status_public".app_levels 
    ADD CONSTRAINT app_levels_reward_id_fkey 
    FOREIGN KEY (reward_id)
    REFERENCES "dashboard_public".rewards (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

COMMIT;
